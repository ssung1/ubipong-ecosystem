const topicNameOrId = 'rocks';
const subscriptionNameOrId1 = 'rocks-subscription1';
const subscriptionNameOrId2 = 'rocks-subscription2';
const data = JSON.stringify({type: 'igneous'});

// Imports the Google Cloud client library
const {PubSub} = require('@google-cloud/pubsub');

// Creates a client; cache this for further use
const pubSubClient = new PubSub('gaeso');

async function getTopics() {
  // Publishes the message as a string, e.g. "Hello, world!" or JSON.stringify(someObject)
  const dataBuffer = Buffer.from(data);

  const topic = pubSubClient.topic(topicNameOrId)
  console.log(topic.name)

  const subscriptionList = await topic.getSubscriptions()
  console.log(subscriptionList[0].map(it => it.name))
}

console.log(`PUBSUB_EMULATOR_HOST = ${process.env.PUBSUB_EMULATOR_HOST}`)
console.log(`GOOGLE_CLOUD_PROJECT = ${process.env.GOOGLE_CLOUD_PROJECT}`)
console.log(`PUBSUB_PROJECT_ID = ${process.env.PUBSUB_PROJECT_ID}`)
getTopics().then(() => {
  console.log('done')
  process.exitCode = 0
  process.exit()
}).catch((err) => {
  console.error(err)
  process.exitCode = 1
  process.exit()
})
