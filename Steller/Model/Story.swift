//
//  Story.swift
//  Steller
//
//  Created by Miroslav Kutak on 22/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import Foundation

// DEV INTERVIEW NOTE: I am not implementing all the properties as they get unused
// DEV INTERVIEW NOTE: I am using 1:1 mapping to make the maintenance and communication between backend & frontend easier (purposefully not defining the coding keys)
// DEV INTERVIEW NOTE: The model layer is very lightweight, so it's better to put it in a single file for better clarity

// TODO: define the StoryPresentable as a ViewModel
protocol StoryPresentable: Identifiable {
    var id: String { get }
    var title: String { get }
    var likes: Likes { get }
    var user: User { get }
    var cover_src: URL { get }
    var cover_bg: String { get }
}

struct Story: Codable, StoryPresentable {
    let id: String
    let title: String
    let likes: Likes
    let user: User
    let cover_src: URL
    let cover_bg: String
}

struct Likes: Codable {
    let count: Int
    let current_user: Bool
}

struct User: Codable, Identifiable {
    let id: String
    let display_name: String
    let avatar_image_url: URL?
}

struct FeedResponse: Codable {
    let data: [Story]
}

// DEV INTERVIEW NOTE: Leaving a sample response here for a better documentation
/*
 {
     "data": [{
         "id": "1639306299789281145",
         "short_id": "9mt4wWmaeW5",
         "revision": 2,
         "user": {
             "id": "76794126980351029",
             "revision": 76,
             "display_name": "Richard McAniff",
             "avatar_image_url": "https://d2rbodpj0xodc.cloudfront.net/users/76794126980351029/avatar/77154bf1-8645-444a-9d6c-c43c8d14363a.jpeg",
             "avatar_image_bg": "#1F2835",
             "header_image_bg": "#948F8B",
             "followers": 2983,
             "following": 3969,
             "explicitly_followed": false,
             "implicitly_followed": false,
             "follows_you": false,
             "blocked": false,
             "stories": 29,
             "follow_request_sent": false,
             "follow_request_received": false,
             "_username": "mombo",
             "private": false
         },
         "version": 4,
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1639306299789281145/ed428a82-b310-48b1-bfcd-dd56513e23fb-640x960.jpeg",
         "cover_bg": "#B7BABF",
         "share_url": "https://steller.co/s/9mt4wWmaeW5",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1639306299789281145/d8a26d7b-fce0-4c08-83e1-71098def935c.jpeg",
         "feed_preview_video": null,
         "page_count": 5,
         "title": "CZECH REPUBLIC AUGUST 2019",
         "snippet": {
             "text": "",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 2,
         "comment_count": 0,
         "canonical_pin": null,
         "aspect_ratio": "9:16",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1639306299789281145/ed428a82-b310-48b1-bfcd-dd56513e23fb-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1639306299789281145/ed428a82-b310-48b1-bfcd-dd56513e23fb-160x240.jpeg",
         "likes": {
             "count": 267,
             "current_user": false
         },
         "private": false
     }, ...],
     "cursor": {
         "before": "1639306299789281145",
         "after": "280364359924844106"
     }
 }
 */
