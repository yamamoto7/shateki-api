# README

### entity
```js
UserObject: {
  id: (int),
  uid: (str),
  name: (str),
  items: [ItemObject, ...]
}
```
```js
ItemObject: {
  id: (int),
  name: (str),
  description: (str),
  image_url: (str),
  height: (int),
  width: (int),
  weight: (int),
  score: (int),
  position": {
    x: (int),
    y: (int)
  } 
} 
```

### EndPoints

#### USER関連
##### GET: /api/users (https://aluminum-318311.uw.r.appspot.com/api/users)
```js
response: {
  users: [UserObject, ...]
}
```
##### GET: /api/users/{:uid}
FirebaseのUIDからユーザーを取得する
```js
response: {
  user: UserObject
}
```
#### 出店関連
##### GET: /api/stores/{:id} (https://aluminum-318311.uw.r.appspot.com/api/stores/1)
```js
{
  store: {
    id: (int),
    name: (str),
    description: (str),
    items: [ItemObject, ...]
 }
}
```
##### POST: /api/stores/{:store_id} 
ストア作成
```js
request: {
  store: {
    name: (str),
    description: (str),
    items: [ItemObject, ...]    
  }
}

reaponse: {
  store: {
    id: (int),
    name: (str),
    description: (str),
    items: [ItemObject, ...]    
  }
}
```
#### 景品関連
##### POST: /api/items/{:item_id}/users 
ユーザーに景品を付与
```js
request: {
  // なし
}

reaponse: {
  item: ItemObject
}
```
