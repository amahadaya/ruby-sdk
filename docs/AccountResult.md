# Freeclimb::AccountResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | The URI for this resource, relative to /apiserver. | [optional] |
| **date_created** | **String** | The date that this resource was created (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **date_updated** | **String** | The date that this resource was last updated (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **revision** | **Integer** | Revision count for the resource. This count is set to 1 on creation and is incremented every time it is updated. | [optional] |
| **account_id** | **String** | String that uniquely identifies this account resource. | [optional] |
| **api_key** | **String** | The API key assigned to this account. This key must be kept a secret by the customer. | [optional] |
| **_alias** | **String** | A description for this account. | [optional] |
| **label** | **String** | A string that identifies a category or group to which the account belongs. | [optional] |
| **type** | **String** | The type of this account. It is one of: trial or full. | [optional] |
| **status** | **String** | The status of this account. It is one of: active, suspended, or closed. | [optional] |
| **subresource_uris** | **Object** | The list of subresources for this account. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::AccountResult.new(
  uri: null,
  date_created: null,
  date_updated: null,
  revision: null,
  account_id: null,
  api_key: null,
  _alias: null,
  label: null,
  type: null,
  status: null,
  subresource_uris: null
)
```

