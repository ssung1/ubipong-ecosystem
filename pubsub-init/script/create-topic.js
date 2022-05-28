const topicNameOrId = 'rocks';
const subscriptionNameOrId1 = 'rocks-subscription1';
const subscriptionNameOrId2 = 'rocks-subscription2';
const data = JSON.stringify({type: 'igneous'});

// Imports the Google Cloud client library
const {PubSub} = require('@google-cloud/pubsub');

// Creates a client; cache this for further use
const pubSubClient = new PubSub('gaeso');

/**
 * topic must be valid
 */
async function createSubscription(topic, subscriptionNameOrId) {
  try {
    const subscription = topic.subscription(subscriptionNameOrId)
    if ((await subscription.exists())[0]) {
      console.log(`Subscription already exists: ${subscriptionNameOrId}`)
    } else {
      console.log(`Subscription created: ${subscriptionNameOrId}`)
      await topic.createSubscription(subscriptionNameOrId)
    }
  } catch (error) {
    throw new Error(`Received error while creating subscription: ${error.message}`);
  }
}

async function createTopic() {
  try {
    const topic = pubSubClient.topic(topicNameOrId)
    if ((await topic.exists())[0]) {
      console.log(`Topic already exists: ${topic.name}`)
      await createSubscription(topic, subscriptionNameOrId1)
      await createSubscription(topic, subscriptionNameOrId2)
    } else {
      console.log(`Topic does not exist: ${topic.name}`)
      const newTopic = await pubSubClient.createTopic(topicNameOrId)
      console.log(`Topic created: ${newTopic[0].name}`)
      await createSubscription(newTopic, subscriptionNameOrId1)
      await createSubscription(newTopic, subscriptionNameOrId2)
    }
  } catch (error) {
    console.log(`Received error while creating topic: ${error.message}`);
  }
}

console.log(`PUBSUB_EMULATOR_HOST = ${process.env.PUBSUB_EMULATOR_HOST}`)
console.log(`GOOGLE_CLOUD_PROJECT = ${process.env.GOOGLE_CLOUD_PROJECT}`)
console.log(`PUBSUB_PROJECT_ID = ${process.env.PUBSUB_PROJECT_ID}`)
createTopic().then(() => {
  console.log('done')
  process.exitCode = 0
  process.exit()
}).catch((err) => {
  console.error(err)
  process.exitCode = 1
  process.exit()
})
