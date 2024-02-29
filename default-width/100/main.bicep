var doggos = ['Evie', 'Casper', 'Indy', 'Kira', 'Mali', 'Mika', 'Nala', 'Riley', 'Sasha']
var numbers = [for number in [0, 1, 2, 3, 4, 6, 7, 8]: /* comment */ number /* comment */]

var evenDoggos = map(
  filter(numbers, i => contains(filter(numbers, j => 0 == j % 2), i)),
  x => doggos[x]
)

var stgData = [{ name: 'account1', location: 'westus' }, { name: 'account2', location: 'eastus' }]

// resource collection
@batchSize(42)
resource stgs 'Microsoft.Storage/storageAccounts@2019-06-01' = [
  for stg in stgData: {
    name: stg.name
    location: stg.location
    kind: 'StorageV2'
    sku: {
      name: 'Standard_LRS'
    }
  }
]

func buildUrl(https bool, host string, path string) string =>
  '${https ? 'https' : 'http'}://${host}${empty(path)}'
