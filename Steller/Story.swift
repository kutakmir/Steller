//
//  Story.swift
//  Steller
//
//  Created by Miroslav Kutak on 22/03/2020.
//  Copyright © 2020 Miroslav Kutak. All rights reserved.
//

import Foundation

struct Story: Codable, Identifiable {
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
}

struct FeedResponse: Codable {
    let data: [Story]
}


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
     }, {
         "id": "1593487551547574230",
         "short_id": "9Z9LPBFX3jk",
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1593487551547574230/2b9ad3b0-f95e-4584-b556-66b9942a9cf5-640x960.jpeg",
         "cover_bg": "#A59E91",
         "share_url": "https://steller.co/s/9Z9LPBFX3jk",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1593487551547574230/92c36d19-0674-4d36-a36b-5ce2830ee09e.jpeg",
         "feed_preview_video": null,
         "page_count": 11,
         "title": "THE BROOKLODGE WICKLOW VALLEY",
         "snippet": {
             "text": "BrookLodge and Macreddin Village is a unique 4 star venue located in a picturesque Wicklow valley, yet just over an hour’s drive south of Dublin airport. Simply put... Macreddin Village is an easily accessible hidden gem in the Garden of Ireland. THE FOOD MAIN EVENT:",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 11,
         "comment_count": 0,
         "canonical_pin": null,
         "aspect_ratio": "9:16",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1593487551547574230/2b9ad3b0-f95e-4584-b556-66b9942a9cf5-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1593487551547574230/2b9ad3b0-f95e-4584-b556-66b9942a9cf5-160x240.jpeg",
         "likes": {
             "count": 289,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1590055355964983214",
         "short_id": "9YFsznPJTJZ",
         "revision": 3,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1590055355964983214/3f9e26c1-53f0-4572-8076-f67e3c9d0fe4-640x960.jpeg",
         "cover_bg": "#ABB0B2",
         "share_url": "https://steller.co/s/9YFsznPJTJZ",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1590055355964983214/1b8dc9b5-5442-44f3-b8eb-17bc48a32cb6.jpeg",
         "feed_preview_video": null,
         "page_count": 11,
         "title": "Ireland Part I",
         "snippet": {
             "text": "A few snaps FROM THE ROAD We caught a red eye flight from Boston to Dublin. Even though we only had limited time, it was an incredible getaway (and journey) Here are a few memories of the trip. #loveireland",
             "entities": {
                 "hashtags": [{
                     "hashtag": "loveireland",
                     "indices": [194, 206]
                 }],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 13,
         "comment_count": 0,
         "canonical_pin": null,
         "aspect_ratio": "9:16",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1590055355964983214/3f9e26c1-53f0-4572-8076-f67e3c9d0fe4-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1590055355964983214/3f9e26c1-53f0-4572-8076-f67e3c9d0fe4-160x240.jpeg",
         "likes": {
             "count": 284,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1589911074080032595",
         "short_id": "9YDtEmkUuWm",
         "revision": 7,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1589911074080032595/f49b4c02-0e79-4da1-9dc0-e0873388eb33-640x960.jpeg",
         "cover_bg": "#B8B5CD",
         "share_url": "https://steller.co/s/9YDtEmkUuWm",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1589911074080032595/dd8366ac-9e03-468d-a6d5-53fa10e3acc1.jpeg",
         "feed_preview_video": null,
         "page_count": 18,
         "title": "STORYTELLERS #loveireland",
         "snippet": {
             "text": "It seems that everyone in Ireland has a story to tell You have to listen carefully ! Storytelling Is in the Music, the dance, the art..... everywhere you look There Is a deep sense of history everywhere you go. Even in the sports....Hurling is one of the oldest sports in the world and traces its roots back over 800 years",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 8,
         "comment_count": 3,
         "canonical_pin": null,
         "aspect_ratio": "9:16",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1589911074080032595/f49b4c02-0e79-4da1-9dc0-e0873388eb33-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1589911074080032595/f49b4c02-0e79-4da1-9dc0-e0873388eb33-160x240.jpeg",
         "likes": {
             "count": 286,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1583370969051825867",
         "short_id": "9WYRdjsgWWP",
         "revision": 5,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1583370969051825867/0a05f214-e549-41f0-b169-716ec7cfe2c6-640x960.jpeg",
         "cover_bg": "#6E7F6C",
         "share_url": "https://steller.co/s/9WYRdjsgWWP",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1583370969051825867/4f17c34d-2c72-4aa0-808b-e5235e52de63.jpeg",
         "feed_preview_video": null,
         "page_count": 15,
         "title": "The lost city of Ireland",
         "snippet": {
             "text": "800 YEARS AGO A city was established by the new Norman Lords that settled this part of Ireland. The town prospered for hundreds of years and then it disappeared. No one seems to know why it was abandoned but lots of theories abound. And then it was rediscovered.",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 13,
         "comment_count": 2,
         "canonical_pin": null,
         "aspect_ratio": "9:16",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1583370969051825867/0a05f214-e549-41f0-b169-716ec7cfe2c6-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1583370969051825867/0a05f214-e549-41f0-b169-716ec7cfe2c6-160x240.jpeg",
         "likes": {
             "count": 285,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1580614855428146195",
         "short_id": "9VrJCK68NED",
         "revision": 3,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1580614855428146195/5e2d5d1b-690a-4a2c-9130-13f907191f81-640x960.jpeg",
         "cover_bg": "#6288C4",
         "share_url": "https://steller.co/s/9VrJCK68NED",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1580614855428146195/1a050136-bb1e-401b-b24d-3869b6f9604b.jpeg",
         "feed_preview_video": null,
         "page_count": 7,
         "title": "SPRINGTIME IN THE MOUNTAINS",
         "snippet": {
             "text": "Finally some decent weather. It’s been raining and snowing non stop for the past week. But I think it’s finally spring.... or maybe summer... or maybe winter. Haha ! Light frost Most likely bear tracks..... these incredible animals are so cool..... as long as you don’t get too close!",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 10,
         "comment_count": 3,
         "canonical_pin": null,
         "aspect_ratio": "9:16",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1580614855428146195/5e2d5d1b-690a-4a2c-9130-13f907191f81-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1580614855428146195/5e2d5d1b-690a-4a2c-9130-13f907191f81-160x240.jpeg",
         "likes": {
             "count": 290,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1579982254132692803",
         "short_id": "9VfYhy6C45m",
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1579982254132692803/28dc995a-0655-40e0-bf6f-1525d2e3ec17-640x960.jpeg",
         "cover_bg": "#C3C4D5",
         "share_url": "https://steller.co/s/9VfYhy6C45m",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1579982254132692803/37b0f7d3-39fd-482e-ab8c-b0490c6d00d1.jpeg",
         "feed_preview_video": null,
         "page_count": 1,
         "title": "There is always a story behind the story",
         "snippet": {
             "text": "",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 0,
         "comment_count": 0,
         "canonical_pin": null,
         "aspect_ratio": "9:16",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1579982254132692803/28dc995a-0655-40e0-bf6f-1525d2e3ec17-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1579982254132692803/28dc995a-0655-40e0-bf6f-1525d2e3ec17-160x240.jpeg",
         "likes": {
             "count": 259,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1540347920795043569",
         "short_id": "9JXN8MwMuwY",
         "revision": 7,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1540347920795043569/f86f9692-6c51-4671-bfb0-71755345bd27-640x960.jpeg",
         "cover_bg": "#586E53",
         "share_url": "https://steller.co/s/9JXN8MwMuwY",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1540347920795043569/5f4e7394-9d44-48fb-9292-fc06361acff7.jpeg",
         "feed_preview_video": "https://d2rbodpj0xodc.cloudfront.net/stories/1540347920795043569/d47fd58c-c337-4db5-979b-c00637793898.mp4",
         "page_count": 5,
         "title": "",
         "snippet": {
             "text": "",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 9,
         "comment_count": 5,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1540347920795043569/f86f9692-6c51-4671-bfb0-71755345bd27-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1540347920795043569/f86f9692-6c51-4671-bfb0-71755345bd27-160x240.jpeg",
         "likes": {
             "count": 283,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1418157692475671636",
         "short_id": "8jENBrypdaV",
         "revision": 3,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1418157692475671636/76978faf-d718-4a60-8d37-73967d8b21a2-640x960.jpeg",
         "cover_bg": "#767A70",
         "share_url": "https://steller.co/s/8jENBrypdaV",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1418157692475671636/ab79f350-9024-4f31-b4b8-5a21bf834fbb-960x503.jpeg",
         "feed_preview_video": null,
         "page_count": 4,
         "title": "Happy Friday",
         "snippet": {
             "text": "Woke up to a couple of inches of snow this morning Not quite ready to get rid of the shorts and flips Have a great weekend",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 7,
         "comment_count": 0,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1418157692475671636/76978faf-d718-4a60-8d37-73967d8b21a2-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1418157692475671636/76978faf-d718-4a60-8d37-73967d8b21a2-160x240.jpeg",
         "likes": {
             "count": 291,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1416674585968903641",
         "short_id": "8hrsVuPd8r5",
         "revision": 5,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1416674585968903641/40d47a9e-561d-43d7-8dc8-5ad17ec8d91d-640x960.jpeg",
         "cover_bg": "#887A64",
         "share_url": "https://steller.co/s/8hrsVuPd8r5",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1416674585968903641/9d32cea6-ef4f-49fb-a994-4e1977e9704d-960x503.jpeg",
         "feed_preview_video": null,
         "page_count": 10,
         "title": "Colorado Colorful",
         "snippet": {
             "text": "Today was an awesome day. The colors were crazy cool. This time of year is a little bit of everything.... snow, rain, and sun It was snowing up the mountains and raining in the valleys Maroon Creek Quick snap of Highlands One more pic before snow moves in Starting",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 13,
         "comment_count": 5,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1416674585968903641/40d47a9e-561d-43d7-8dc8-5ad17ec8d91d-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1416674585968903641/40d47a9e-561d-43d7-8dc8-5ad17ec8d91d-160x240.jpeg",
         "likes": {
             "count": 299,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1416225887296161045",
         "short_id": "8hjeNVhXhnc",
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1416225887296161045/ad497ad1-8f18-4a52-87e5-2a86650451b3-640x960.jpeg",
         "cover_bg": "#687E96",
         "share_url": "https://steller.co/s/8hjeNVhXhnc",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1416225887296161045/42fcbe1d-3b5c-4c3c-a183-ee90bf1b5b25-960x503.jpeg",
         "feed_preview_video": null,
         "page_count": 10,
         "title": "Early Winter Snow in the forecast",
         "snippet": {
             "text": "This weekend was a mix of sun, clouds, rain and a bit of snow The valleys were warm and the colors were spectacular ... great day for a hike ! But the high country was blustery and snowy.... maybe take an extra down and rain jacket But not sblustery !!! Taking a break on Tiehack",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 10,
         "comment_count": 3,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1416225887296161045/ad497ad1-8f18-4a52-87e5-2a86650451b3-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1416225887296161045/ad497ad1-8f18-4a52-87e5-2a86650451b3-160x240.jpeg",
         "likes": {
             "count": 284,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1413033055097980693",
         "short_id": "8gvVkrHd4za",
         "revision": 3,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1413033055097980693/1c41e6ef-4f00-4a39-a7a5-95de12d79eab-640x960.jpeg",
         "cover_bg": "#7B807F",
         "share_url": "https://steller.co/s/8gvVkrHd4za",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1413033055097980693/e558bd59-b637-4671-b607-1bb61f1636e6.jpeg",
         "feed_preview_video": null,
         "page_count": 7,
         "title": "LAST DAYS Of Fall",
         "snippet": {
             "text": "Because A few more pics Can you say blue. Snow in the Hugh country Winter is coming ... Have a great weekend Have a great weekend",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 6,
         "comment_count": 0,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1413033055097980693/1c41e6ef-4f00-4a39-a7a5-95de12d79eab-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1413033055097980693/1c41e6ef-4f00-4a39-a7a5-95de12d79eab-160x240.jpeg",
         "likes": {
             "count": 285,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1411580724691076294",
         "short_id": "8gYR57wp9Tw",
         "revision": 4,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1411580724691076294/d9467287-7de4-4b3c-8744-b40785d7522d-640x960.jpeg",
         "cover_bg": "#858B90",
         "share_url": "https://steller.co/s/8gYR57wp9Tw",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1411580724691076294/ec507e96-57f5-43c4-921a-471b80a7cc93.jpeg",
         "feed_preview_video": null,
         "page_count": 6,
         "title": "Early Morning Fall Colors",
         "snippet": {
             "text": "It’s been raining here for the last few days.... which is great as it’s been so dry .... forecast is for snow next week! Have a wonderful Wednesday",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 5,
         "comment_count": 6,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1411580724691076294/d9467287-7de4-4b3c-8744-b40785d7522d-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1411580724691076294/d9467287-7de4-4b3c-8744-b40785d7522d-160x240.jpeg",
         "likes": {
             "count": 286,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1409700796206941650",
         "short_id": "8g5PzzBfza6",
         "revision": 3,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1409700796206941650/b3cfb9b1-0af1-42ee-ad9a-9ea8f3077512-640x960.jpeg",
         "cover_bg": "#6D6B57",
         "share_url": "https://steller.co/s/8g5PzzBfza6",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1409700796206941650/dfa6f163-2dbc-4bc0-a0ff-a1796f917095.jpeg",
         "feed_preview_video": null,
         "page_count": 9,
         "title": "",
         "snippet": {
             "text": "Today was so incredibly beautiful. Colors are changing, it’s getting cooler and the bears are hungry! Here are a few snaps And did I say the bears are out in full force! This time of the year we see lots and lots of bears. They are really wonderful and we feel so lucky that we get a chance to live in their habitat. They are fattening up for winter and are eating almost 20 hours a day. For the most part they are pretty chill..... but you need to be respectful and watch out for cubs!",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 5,
         "comment_count": 6,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1409700796206941650/b3cfb9b1-0af1-42ee-ad9a-9ea8f3077512-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1409700796206941650/b3cfb9b1-0af1-42ee-ad9a-9ea8f3077512-160x240.jpeg",
         "likes": {
             "count": 286,
             "current_user": false
         },
         "private": false
     }, {
         "id": "1400918406378554434",
         "short_id": "8dpwhfxF9ck",
         "revision": 4,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/1400918406378554434/082fac85-91e5-461d-b754-4266e8a924e5-640x960.jpeg",
         "cover_bg": "#78837E",
         "share_url": "https://steller.co/s/8dpwhfxF9ck",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/1400918406378554434/c75691c2-f1c9-435c-b92f-4626817e720f.jpeg",
         "feed_preview_video": null,
         "page_count": 8,
         "title": "ASPEN TO CRESTED BUTTE Last week we added one to the Bucket List. Hiked over 11 miles and gained around 3.5 K feet in elevation. The weather was perfect.",
         "snippet": {
             "text": "Start early Maroon Creek Trailhead The trailhead starts at Maroon Lake and the entrance to the Maroon Bells-Snowmass Wilderness Area. It’s recommended to leave earlier than 8am, but we got a late start and didn’t get hiking until nearly 9am By car, Crested Butte and Aspen are 100 miles apart. But on foot, the two mountain towns are just 11 miles from one another. The hike from Aspen to Crested Butte takes you over the 12,500-foot West Maroon Pass and is one of the most scenic routes in the Rockies",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 11,
         "comment_count": 7,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/1400918406378554434/082fac85-91e5-461d-b754-4266e8a924e5-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/1400918406378554434/082fac85-91e5-461d-b754-4266e8a924e5-160x240.jpeg",
         "likes": {
             "count": 295,
             "current_user": false
         },
         "private": false
     }, {
         "id": "349204112975332987",
         "short_id": "3eSpGrCzM4p",
         "revision": 8,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/349204112975332987/d78c6f6e-fc28-40b2-bf51-9dc514e28237-640x960.jpeg",
         "cover_bg": "#97874C",
         "share_url": "https://steller.co/s/3eSpGrCzM4p",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/349204112975332987/7c834003-6e0e-4f2b-a53b-89b12b8d8e1b-640x335.jpeg",
         "feed_preview_video": null,
         "page_count": 9,
         "title": "G O L O C A L Part 2",
         "snippet": {
             "text": "One of the things that I'm going to miss as we move out of summer is the local market. It's so great to get organically grown fruits and vegetables from local farmers. It's just a small market but big enough to support what we need. Here are a few shots taken from my iPhone.",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 13,
         "comment_count": 67,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/349204112975332987/d78c6f6e-fc28-40b2-bf51-9dc514e28237-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/349204112975332987/d78c6f6e-fc28-40b2-bf51-9dc514e28237-160x240.jpeg",
         "likes": {
             "count": 473,
             "current_user": false
         },
         "private": false
     }, {
         "id": "323882178003862666",
         "short_id": "3Xxa9X9TPWy",
         "revision": 8,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/323882178003862666/a48cd10c-f3f2-47e0-a4aa-f6999ef6ea9c-640x960.jpeg",
         "cover_bg": "#AE8F7E",
         "share_url": "https://steller.co/s/3Xxa9X9TPWy",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/323882178003862666/239fe0d3-fba9-4946-a13e-cfe18b6d1943-640x335.jpeg",
         "feed_preview_video": null,
         "page_count": 6,
         "title": "GO LOCAL",
         "snippet": {
             "text": "Sunday Market Every Sunday there is a local farmers market that we go to buy our veggies from. It's a small market but has most everything you need. #golocal #local G O L O C A L !",
             "entities": {
                 "hashtags": [{
                     "hashtag": "golocal",
                     "indices": [149, 157]
                 }, {
                     "hashtag": "local",
                     "indices": [158, 164]
                 }],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 13,
         "comment_count": 47,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/323882178003862666/a48cd10c-f3f2-47e0-a4aa-f6999ef6ea9c-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/323882178003862666/64e1adcc-abdb-4cb5-8926-e1f38217ee7a-160x240.jpeg",
         "likes": {
             "count": 483,
             "current_user": false
         },
         "private": false
     }, {
         "id": "294376224220775899",
         "short_id": "3PPV79nvtJ9",
         "revision": 11,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/294376224220775899/a98dd495-89f8-409b-9093-660054960467-640x960.jpeg",
         "cover_bg": "#7F8DA3",
         "share_url": "https://steller.co/s/3PPV79nvtJ9",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/294376224220775899/f96f03e1-8a44-4717-b35c-ee270fdcb62f-640x335.jpeg",
         "feed_preview_video": null,
         "page_count": 15,
         "title": "COLORS OF MAUI",
         "snippet": {
             "text": "S T O R M G R E Y S U N R I S E C O F F E E O C E A N B L U E S U N S E T C O R A L T R O P I C A L P U R P L E R A I N B O W B L U E COLORS OF MAUI #nofilter #maui",
             "entities": {
                 "hashtags": [{
                     "hashtag": "nofilter",
                     "indices": [149, 158]
                 }, {
                     "hashtag": "maui",
                     "indices": [159, 164]
                 }],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 38,
         "comment_count": 63,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/294376224220775899/a98dd495-89f8-409b-9093-660054960467-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/294376224220775899/012044b1-4776-4aad-9d84-2f1fa0f84d05-160x240.jpeg",
         "likes": {
             "count": 445,
             "current_user": false
         },
         "private": false
     }, {
         "id": "294196141442991526",
         "short_id": "3PLzbFb7RMy",
         "revision": 12,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/294196141442991526/1d3cbd86-f050-41a3-83f1-c299148f382f-640x960.jpeg",
         "cover_bg": "#9B9A62",
         "share_url": "https://steller.co/s/3PLzbFb7RMy",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/294196141442991526/b0a6b279-42d3-46b8-82ac-08396903ccfe-640x335.jpeg",
         "feed_preview_video": null,
         "page_count": 4,
         "title": "SHADOWS",
         "snippet": {
             "text": "",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 2,
         "comment_count": 6,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/294196141442991526/1d3cbd86-f050-41a3-83f1-c299148f382f-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/294196141442991526/59698f33-ddd6-4d74-be91-9b1942097bc6-160x240.jpeg",
         "likes": {
             "count": 99,
             "current_user": false
         },
         "private": false
     }, {
         "id": "280364359924844106",
         "short_id": "3Kpg6ehnbAn",
         "revision": 10,
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
         "cover_src": "https://d2rbodpj0xodc.cloudfront.net/stories/280364359924844106/1b82eab0-4479-409d-bd9b-0c42a800042b-640x960.jpeg",
         "cover_bg": "#8C7368",
         "share_url": "https://steller.co/s/3Kpg6ehnbAn",
         "landscape_share_image": "https://d2rbodpj0xodc.cloudfront.net/stories/280364359924844106/da83e262-c19e-4927-b7d3-d270f8de59f9-640x335.jpeg",
         "feed_preview_video": null,
         "page_count": 14,
         "title": "GRADUATION 2014",
         "snippet": {
             "text": "I hope That you always have friends I pray That you never lose your passion, spirit and good nature I believe That family will always be part of your life And I trust That you will not lose any more sunglasses! Or drop any more iPhones into the water! Miguel",
             "entities": {
                 "hashtags": [],
                 "urls": [],
                 "users": []
             }
         },
         "collection_count": 1,
         "comment_count": 22,
         "canonical_pin": null,
         "aspect_ratio": "2:3",
         "story_type_id": null,
         "story_type": null,
         "cover_src_320x480": "https://d2rbodpj0xodc.cloudfront.net/stories/280364359924844106/1b82eab0-4479-409d-bd9b-0c42a800042b-320x480.jpeg",
         "cover_src_160x240": "https://d2rbodpj0xodc.cloudfront.net/stories/280364359924844106/0b50909b-0920-4c7d-8f5c-4205a9a1c523-160x240.jpeg",
         "likes": {
             "count": 151,
             "current_user": false
         },
         "private": false
     }],
     "cursor": {
         "before": "1639306299789281145",
         "after": "280364359924844106"
     }
 }
 */
