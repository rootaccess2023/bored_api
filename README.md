# Firstmate Bored API

This is a backend Rails API that fetches random activities from the Bored API and returns the data in different formats: JSON, CSV, or logs it to the console.

## Features

- Fetch random activities from an external API (Bored API).
- Supports multiple response formats: JSON, CSV, and console log.

## API Reference

#### GET /random_activity

This endpoint retrieves a specified number of random activities from the Bored API and returns them in the desired format (JSON, CSV, or console log).

```http
  GET /random_activity?count={count}&format={format}
```

| Parameter | Type     | Description                                                                                        |
| :-------- | :------- | :------------------------------------------------------------------------------------------------- |
| `count`   | `number` | **Required**. Number of fetches to make                                                            |
| `format`  | `string` | **Required**. The format in which to return the activities. Supported formats (JSON, CSV, console) |

#### 1. JSON Response

```http
  GET /random_activity?count=1&format=json
```

#### Response:

```http
{
  "random_activity": [
    {
      "activity": "Go on a long drive with no music",
      "availability": 0.2,
      "type": "relaxation",
      "participants": 1,
      "price": 0.1,
      "accessibility": "Minor challenges",
      "duration": "hours",
      "kidFriendly": true,
      "link": "",
      "key": "4290333"
    }
  ]
}
```

#### 2. CSV Response

```http
  GET /random_activity?count=4&format=csv
```

#### 3. Console Response

```http
  GET /random_activity?count=9&format=console
```

#### Error Responses

If the format is not one of json, csv, or console, a 400 Bad Request error will be returned.

```http
  {
    "error": "Not a valid format. Use either json, csv or console. Peace ^_^v!"
  }
```

## Setup

#### 1. Clone the repository

```http
  https://github.com/rootaccess2023/bored_api
  cd bored_api
```

#### 2. Install dependencies

```http
  bundle install
```

#### 3. Start the Rails server:

```http
  rails s
```

#### 4. Visit the API endpoint

```http
  http://localhost:3000/random_activity?count=5&format=json
```

## Tech Stack

Ruby (version 2.7 or higher recommended)

Rails (version 6 or higher recommended)

A running internet connection (for connecting to the Bored API)

## Acknowledgements

- [Markdown Guide](https://www.markdownguide.org/basic-syntax/#overview)
