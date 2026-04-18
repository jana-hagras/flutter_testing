# API Documentation

## Login

**Endpoint:** `POST /login`

**Request Body:**
```json
{
  "email": "",
  "password": "",
  "phone": ""
}
```

**Response:**
```json
{
  "token": ""
}
```

## Fetch Album

**Endpoint:** `GET https://jsonplaceholder.typicode.com/albums/1`

**Response:**
```json
{
  "userId": 1,
  "id": 1,
  "title": ""
}
```
