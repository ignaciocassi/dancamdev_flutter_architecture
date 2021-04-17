# Dancamdev's Flutter Architecture

This is a small sample project to showcase my approach to Flutter architecture.

This is an architecture I've been using and testing across many Flutter apps, it is really easy to implement and it scales really well.

## The Architecture Diagram

The whole architecture can be summarized as follows

![Flutter architecture diagram](/architecture.png)

## The API used in the sample project

The API I used is called [catAPI](https://github.com/ThatCopy/catAPI/wiki/Usage)

It requires no authentication, it gets called on this url

`https://thatcopy.pw/catapi/rest/`

and returns a response similar to this

```
{
    "url":"https://i.thatcopy.pw/cat/S8erXAD.jpg", 
    "webpurl": "https://i.thatcopy.pw/cat-webp/S8erXAD.webp", 
    "id":14
}

```
