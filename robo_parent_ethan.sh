kid="Ethan"
dateString=$(date +'%A %B %d %Y')
my_json="{
	\"blocks\": [
		{
			\"type\": \"rich_text\",
			\"elements\": [
				{
					\"type\": \"rich_text_section\",
					\"elements\": [
						{
							\"type\": \"text\",
							\"text\": \"Good morning $kid! Today is $dateString\",
							\"style\": {
								\"bold\": true
							}
						},
						{
							\"type\": \"text\",
							\"text\": \" \"
						},
						{
							\"type\": \"emoji\",
							\"name\": \"sunny\",
							\"unicode\": \"2600-fe0f\"
						},
						{
							\"type\": \"text\",
							\"text\": \"\n\nThis is your parents asking you if you have picked up your room.  Remember, this includes the following:\n\"
						}
					]
				},
				{
					\"type\": \"rich_text_list\",
					\"style\": \"bullet\",
					\"indent\": 0,
					\"border\": 0,
					\"elements\": [
						{
							\"type\": \"rich_text_section\",
							\"elements\": [
								{
									\"type\": \"text\",
									\"text\": \"Make your bed \"
								},
								{
									\"type\": \"emoji\",
									\"name\": \"bed\",
									\"unicode\": \"1f6cf-fe0f\"
								}
							]
						},
						{
							\"type\": \"rich_text_section\",
							\"elements\": [
								{
									\"type\": \"text\",
									\"text\": \"Open the shades\"
								},
								{
									\"type\": \"emoji\",
									\"name\": \"window\",
									\"unicode\": \"1fa9f\"
								}
							]
						},
						{
							\"type\": \"rich_text_section\",
							\"elements\": [
								{
									\"type\": \"text\",
									\"text\": \"Pick up your laundry \"
								},
								{
									\"type\": \"emoji\",
									\"name\": \"shirt\",
									\"unicode\": \"1f455\"
								}
							]
						},
						{
							\"type\": \"rich_text_section\",
							\"elements\": [
								{
									\"type\": \"text\",
									\"text\": \"Turn the lights and fan off\"
								},
								{
									\"type\": \"emoji\",
									\"name\": \"zap\",
									\"unicode\": \"26a1\"
								}
							]
						}
					]
				},
				{
					\"type\": \"rich_text_section\",
					\"elements\": [
						{
							\"type\": \"text\",
							\"text\": \"\nDid you do everything?\"
						}
					]
				}
			]
		},
		{
			\"type\": \"actions\",
			\"elements\": [
				{
					\"type\": \"button\",
					\"text\": {
						\"type\": \"plain_text\",
						\"text\": \"Yes\",
						\"emoji\": true
					},
					\"value\": \"SuccessfulCleanup$kid\",
					\"action_id\": \"SuccessfulCleanup$kid\",
					\"style\": \"primary\"
				},
				{
					\"type\": \"button\",
					\"text\": {
						\"type\": \"plain_text\",
						\"text\": \"No\",
						\"emoji\": true
					},
					\"value\": \"FailedCleanup$kid\",
					\"action_id\": \"FailedCleanup$kid\",
					\"style\": \"danger\"
				},
				{
					\"type\": \"button\",
					\"text\": {
						\"type\": \"plain_text\",
						\"text\": \"Dismiss\",
						\"emoji\": true
					},
					\"value\": \"DismissedCleanup$kid\",
					\"action_id\": \"DismissedCleanup$kid\"
				}
			]
		}
	]
}"

source secrets.env
curl -X POST -H 'Content-type: application/json' --data "$my_json" "$ETHAN_SLACK_URL"
#echo $my_json
foo='{"text":"Hello, World!"}'