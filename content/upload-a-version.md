---
title: Upload a Version
aliases: ["upload a resource version to razee"]
---

From the **Channels** tab, click a channel name
to go to the details page of that channel. You can use RazeeDash to upload a
file or you can use the Razee API directly as shown in the
following example. For example, you might have a GitHub source repository
and use Travis to automatically check in your files
when you commit a change. You can extend the Travis script to push the new
version of your resource to Razee after all checks have passed.

```bash

    curl --url http://localhost:3333/graphql \
        --header 'content-type: multipart/form-data' \
        --header "x-api-key: ${X_API_KEY}" \
        --form 'operations={
                "query": "mutation addChannelVersion($orgId:String!, $channelUuid:String!, $name:String!, $type:String!, $content:String, $file:Upload, $description:String) {\n addChannelVersion(orgId:$orgId,channelUuid:$channelUuid, name:$name, type:$type, content:$content, file:$file, description:$description){\n success\n    versionUuid\n  }\n}",
                "variables": {
                    "orgId": "'$ORG_ID'",
                    "channelUuid": "'$CHANNEL_UUID'",
                    "name": "'$VERSION'",
                    "type": "application/yaml",
                    "file": null,
                    "content": null,
                    "description": null
                },
                "operationName": "addChannelVersion"
                }' \
        --form 'map={"localfile":["variables.file"]}' \
        --form localfile=@resource.yaml

```

Example output:

```bash
    {"data":{"addChannelVersion":{"success":true,"versionUuid":"203ced14-2248-438f-81ea-e5bce547e6e1"}}}
```

---
[[Create a subscription]]
