## RDS
- Multi AZ. It is for failover only. As soon as we have one RDS in one AZ, if the feature is on, we have another one in another AZ. In case if failuer, RDS switches to this seocnd one.
- Read replica can add to only READ. It could be cross region or cross AZ. Each node has its own end point Url. Automatic backup should be turned on.

### Encryption
- Encryption could be done using a key in KMS. Only can be turned on at the initialization.
- To move to encrypted data after initialization:
	- Do a snapshot
	- Encrypt that snapshot
	- Restore using encrypted snapshot

### backups
- Database Snapshots
	- Manuall
	- No retention period
	- Good to recover to a known state. For example do a snapshot just before a major migration.
- Automated Backups
	- Recover to any point in time 1-35 days.
	- It uses snapshot of back up and transaction logs
	- It stores it in S3. The S3 is FREE


## Elastic Cache
- Redis: multi AZ
- MemCached: not multi AZ

## Parameter Store
Store paramters in plain text or encrypted (using KMS)
- Standard: 4Kbyte value and only 10,000 keys. FREE
- Advances: 8KByte and unlimited.

## Data Store
### EBS
For EC2. One for each instance.
### EFS
For EC2. One to shared between all EC2s.


## S3
Stored in more than 3 AZs. 
0 < size < 5TB
Max file size for PUT Request is 5GB
Can create Policy for each bucket
Bucket Access Level: policy for objects
Access logs are not enable by default.
*Encryption*: 
- SSE-S3: S3 managed keys. Each file encrypted by a seperate file and the key itself encrypted. It is rotated regularly.
- SSE-KMS 
- SSE-C: User provided key.
 
 ### Standard
 ### Standard In Frequesnt Access
 long term backups, 2,3 times access in a month
 ### Satndard IA One zone
 Long term non critical data (99.5% accesibility)
 ### Glacier Standard
 Archive. 2,3 times a year.
 ### Glacier Deep Archive
 May or may not 2 time a year
 ### intelgent tiring
 Automatically move to cost effective tier
 
 ### CLI
 `aws s3 cp s3://cf-templates-114uz3nwy6e6d-us-east-1/2021091ymX-designer/template16zwclun5ww3 ./`
  	
	
## Cloud Front
It helps also fo ruploads because users can upload to Edge locations.
Origins
- S3
- ELB
- EC2
- VPS outside of AWS


## DynamoDb
Nosql data store

### Create table
```
aws dynamodb create-table \
    --table-name Music \
    --attribute-definitions \
        AttributeName=Artist,AttributeType=S \
        AttributeName=SongTitle,AttributeType=S \
    --key-schema \
        AttributeName=Artist,KeyType=HASH \
        AttributeName=SongTitle,KeyType=RANGE \
	--provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
```

### describe tale
`aws dynamodb describe-table --table-name Music`

### put item
```
aws dynamodb put-item \
    --table-name Music \
	--item file://item.json
```
item.json
```
{
    "Artist": {"S": "No One You Know"},
    "SongTitle": {"S": "Call Me Today"},
    "AlbumTitle": {"S": "Greatest Hits"}
}
```

### Read item
```
aws dynamodb get-item --consistent-read     --table-name Music     --key '{ "Artist": {"S": "No One You Know"}, "SongTitle": {"S": "Call Me Today"}}'
```

### Query
```
aws dynamodb query     --table-name Music     --key-condition-expression "Artist = :name"     --expression-attribute-values  '{":name":{"S":"No One You Know"}}'
```

### Scan
```
aws dynamodb scan --table-name Music
```

## CloudFormation
- Templates: Describe the elements with JSON, TXT or YAML
- Stacks: The resources all together is a stack
- ChangeSet: After modifying the template and run the cloudFormation, it generates a change set to show what is going to change.

### CLI
Create
`aws cloudformation create-stack --template-body file://cloudformation/s3.json --stack-name testS3`

delete
`aws cloudformation delete-stack --stack-name testS3`

S3 stack example
```{
    "Resources" : {
        "HelloBucket" : {
            "Type" : "AWS::S3::Bucket",
            "Properties" : {
               "AccessControl" : "PublicRead",
            }
        }
    }
}
```

DynamoDB stack example
```
{
  "AWSTemplateFormatVersion" : "2010-09-09",
  "Resources" : {
    "myDynamoDBTable" : {
      "Type" : "AWS::DynamoDB::Table",
      "Properties" : {
        "AttributeDefinitions" : [
          {
            "AttributeName" : "Primary",
            "AttributeType" : "S"
          },
          {
            "AttributeName" : "Secondary",
            "AttributeType" : "S"
          }
        ],
        "KeySchema" : [
          {
            "AttributeName" : "Primary",
            "KeyType" : "HASH"
          },
          {
            "AttributeName" : "Secondary",
            "KeyType" : "RANGE"
          }
        ],
        "ProvisionedThroughput" : {
          "ReadCapacityUnits" : "5",
          "WriteCapacityUnits" : "5"
        },
        "TableName" : "myTableName"
      }
    }
  }
}
```

## KMS
`aws kms list-keys`

Encrypt
```
	aws kms encrypt --key-id "8595c740-3024-49bd-b5c5-208401d5a605" --plaintext fileb://test.txt --output text --query CiphertextBlob | base64 --decode > encryptedsecret.txt
```

Decrypt
```
aws kms decrypt --ciphertext-blob  fileb://encryptedsecret.txt --output text --query Plaintext | base64 --decode > decryptedsecret.txt
```


## Lambda
Two ways to define and store the function and dependencies:
- Container
- ZIP

```
bundle install --path vendor/bundle
zip -r function.zip app.rb vendor lambda_function.rb telegram.rb
```

And then 
```
aws lambda update-function-code --function-name my-function --zip-file fileb://function.zip
```

### docker image for Lambda
``` DockerFile
FROM public.ecr.aws/lambda/ruby:2.7
COPY app.rb ${LAMBDA_TASK_ROOT}
CMD [ "app.LambdaFunction::Handler.process" ]
```

``` app.rb
module LambdaFunction
  class Handler
    def self.process(event:, context:)
      { statusCode: 200, body: JSON.generate({success: true}) }
    end
  end
end
```

test it by `curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"payload":"hello world!"}'`