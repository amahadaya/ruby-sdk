# Freeclimb::AccountResultAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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

instance = Freeclimb::AccountResultAllOf.new(
  account_id: null,
  api_key: null,
  _alias: null,
  label: null,
  type: null,
  status: null,
  subresource_uris: null
)
```

