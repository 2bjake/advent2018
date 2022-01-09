let input = """
1518-05-08T00:12:00Z=falls asleep
1518-09-09T00:04:00Z=1543 begins shift
1518-04-05T00:00:00Z=131 begins shift
1518-09-12T00:54:00Z=falls asleep
1518-08-28T00:12:00Z=falls asleep
1518-06-06T00:25:00Z=wakes up
1518-06-30T00:35:00Z=falls asleep
1518-09-29T00:30:00Z=falls asleep
1518-03-28T00:56:00Z=wakes up
1518-06-03T00:19:00Z=wakes up
1518-05-08T00:44:00Z=wakes up
1518-08-01T00:27:00Z=falls asleep
1518-09-06T00:11:00Z=wakes up
1518-07-08T23:58:00Z=1997 begins shift
1518-09-10T00:02:00Z=falls asleep
1518-09-12T00:01:00Z=falls asleep
1518-10-13T00:59:00Z=wakes up
1518-06-10T00:41:00Z=wakes up
1518-08-14T00:47:00Z=falls asleep
1518-04-06T00:27:00Z=wakes up
1518-08-21T00:22:00Z=wakes up
1518-06-03T00:18:00Z=falls asleep
1518-07-08T00:03:00Z=falls asleep
1518-08-27T00:00:00Z=falls asleep
1518-06-16T23:49:00Z=353 begins shift
1518-09-24T23:59:00Z=449 begins shift
1518-07-04T00:14:00Z=falls asleep
1518-07-14T00:46:00Z=falls asleep
1518-07-16T00:44:00Z=wakes up
1518-05-16T23:58:00Z=2539 begins shift
1518-11-17T00:44:00Z=falls asleep
1518-08-10T00:41:00Z=wakes up
1518-06-15T00:59:00Z=wakes up
1518-03-20T00:58:00Z=wakes up
1518-11-23T00:52:00Z=wakes up
1518-10-08T00:35:00Z=falls asleep
1518-04-16T00:37:00Z=wakes up
1518-08-07T00:52:00Z=wakes up
1518-03-15T00:35:00Z=wakes up
1518-08-18T00:52:00Z=wakes up
1518-07-08T00:38:00Z=falls asleep
1518-11-17T00:09:00Z=falls asleep
1518-08-09T00:33:00Z=falls asleep
1518-11-21T00:04:00Z=falls asleep
1518-10-29T00:36:00Z=wakes up
1518-10-22T00:41:00Z=wakes up
1518-04-16T00:43:00Z=wakes up
1518-08-21T00:49:00Z=falls asleep
1518-04-22T00:26:00Z=wakes up
1518-05-07T00:54:00Z=falls asleep
1518-05-02T00:21:00Z=falls asleep
1518-04-18T00:51:00Z=falls asleep
1518-09-30T00:22:00Z=wakes up
1518-08-30T00:18:00Z=falls asleep
1518-11-08T23:48:00Z=2053 begins shift
1518-08-03T00:45:00Z=falls asleep
1518-07-30T00:53:00Z=wakes up
1518-09-10T00:13:00Z=wakes up
1518-08-18T23:48:00Z=1063 begins shift
1518-10-11T00:46:00Z=wakes up
1518-05-30T00:03:00Z=1153 begins shift
1518-03-30T23:58:00Z=2539 begins shift
1518-05-02T00:46:00Z=falls asleep
1518-05-19T00:02:00Z=falls asleep
1518-08-15T00:29:00Z=wakes up
1518-05-09T00:16:00Z=falls asleep
1518-08-27T00:44:00Z=wakes up
1518-07-05T00:19:00Z=wakes up
1518-06-17T00:37:00Z=falls asleep
1518-04-17T00:36:00Z=falls asleep
1518-06-04T00:59:00Z=wakes up
1518-10-23T00:53:00Z=wakes up
1518-04-22T00:15:00Z=falls asleep
1518-10-15T00:00:00Z=2351 begins shift
1518-05-23T00:28:00Z=falls asleep
1518-08-06T00:34:00Z=wakes up
1518-10-27T00:03:00Z=falls asleep
1518-09-26T00:04:00Z=2539 begins shift
1518-10-06T00:52:00Z=wakes up
1518-08-16T00:00:00Z=3271 begins shift
1518-08-03T00:03:00Z=2671 begins shift
1518-03-21T00:38:00Z=wakes up
1518-05-18T23:46:00Z=1997 begins shift
1518-05-18T00:02:00Z=2411 begins shift
1518-03-19T00:00:00Z=2539 begins shift
1518-06-11T00:04:00Z=falls asleep
1518-07-29T00:31:00Z=falls asleep
1518-03-18T00:57:00Z=falls asleep
1518-07-12T00:42:00Z=wakes up
1518-05-02T00:00:00Z=1543 begins shift
1518-09-09T00:53:00Z=wakes up
1518-08-23T00:00:00Z=1543 begins shift
1518-08-13T00:19:00Z=falls asleep
1518-08-14T23:57:00Z=2539 begins shift
1518-05-08T00:04:00Z=569 begins shift
1518-10-02T00:27:00Z=falls asleep
1518-07-09T00:58:00Z=wakes up
1518-11-04T00:00:00Z=2053 begins shift
1518-03-27T23:53:00Z=1543 begins shift
1518-08-25T00:46:00Z=falls asleep
1518-10-02T00:41:00Z=wakes up
1518-04-23T00:11:00Z=wakes up
1518-10-11T00:20:00Z=falls asleep
1518-08-28T00:47:00Z=wakes up
1518-11-22T00:00:00Z=1489 begins shift
1518-04-17T00:58:00Z=wakes up
1518-08-31T00:41:00Z=wakes up
1518-06-12T00:25:00Z=falls asleep
1518-11-09T00:02:00Z=falls asleep
1518-09-27T00:01:00Z=449 begins shift
1518-07-14T00:33:00Z=falls asleep
1518-04-24T00:20:00Z=falls asleep
1518-05-07T00:49:00Z=wakes up
1518-05-29T00:56:00Z=wakes up
1518-09-05T23:54:00Z=1063 begins shift
1518-09-14T00:51:00Z=falls asleep
1518-09-20T00:01:00Z=1153 begins shift
1518-11-03T00:40:00Z=falls asleep
1518-04-21T00:24:00Z=wakes up
1518-08-06T00:45:00Z=falls asleep
1518-10-27T00:40:00Z=wakes up
1518-06-29T00:57:00Z=falls asleep
1518-04-12T00:41:00Z=wakes up
1518-05-04T00:17:00Z=falls asleep
1518-10-04T00:02:00Z=falls asleep
1518-05-20T00:02:00Z=2411 begins shift
1518-11-11T00:22:00Z=wakes up
1518-07-28T00:59:00Z=wakes up
1518-03-17T00:58:00Z=wakes up
1518-09-04T00:01:00Z=falls asleep
1518-04-19T00:35:00Z=falls asleep
1518-09-09T23:49:00Z=2671 begins shift
1518-07-15T00:02:00Z=2351 begins shift
1518-03-28T00:48:00Z=falls asleep
1518-11-12T00:46:00Z=wakes up
1518-06-09T23:57:00Z=2311 begins shift
1518-08-30T00:03:00Z=131 begins shift
1518-09-25T00:35:00Z=wakes up
1518-06-03T00:47:00Z=wakes up
1518-07-10T00:50:00Z=wakes up
1518-05-22T00:15:00Z=wakes up
1518-03-29T00:11:00Z=falls asleep
1518-10-20T00:16:00Z=falls asleep
1518-10-10T00:53:00Z=wakes up
1518-11-16T00:06:00Z=falls asleep
1518-10-26T00:48:00Z=falls asleep
1518-05-05T00:02:00Z=falls asleep
1518-08-25T00:20:00Z=wakes up
1518-08-18T00:01:00Z=falls asleep
1518-09-15T00:32:00Z=wakes up
1518-10-25T00:09:00Z=wakes up
1518-06-04T00:55:00Z=falls asleep
1518-07-27T00:52:00Z=wakes up
1518-04-12T00:01:00Z=2351 begins shift
1518-04-27T00:01:00Z=2053 begins shift
1518-08-22T00:57:00Z=falls asleep
1518-08-22T00:58:00Z=wakes up
1518-11-20T23:46:00Z=1879 begins shift
1518-10-29T00:53:00Z=wakes up
1518-06-14T00:54:00Z=falls asleep
1518-10-15T23:59:00Z=2351 begins shift
1518-06-18T00:58:00Z=wakes up
1518-11-14T00:31:00Z=falls asleep
1518-03-19T00:07:00Z=falls asleep
1518-09-10T23:58:00Z=2539 begins shift
1518-10-13T00:15:00Z=falls asleep
1518-06-16T00:24:00Z=falls asleep
1518-11-23T00:37:00Z=falls asleep
1518-04-26T00:15:00Z=wakes up
1518-03-22T00:29:00Z=falls asleep
1518-11-13T00:01:00Z=1063 begins shift
1518-07-24T23:59:00Z=1153 begins shift
1518-03-16T00:21:00Z=wakes up
1518-07-14T00:56:00Z=wakes up
1518-05-18T00:57:00Z=wakes up
1518-06-01T00:57:00Z=wakes up
1518-07-15T00:17:00Z=falls asleep
1518-07-17T00:57:00Z=falls asleep
1518-10-16T00:36:00Z=wakes up
1518-11-11T00:02:00Z=falls asleep
1518-05-26T00:05:00Z=falls asleep
1518-10-09T00:04:00Z=449 begins shift
1518-09-05T00:32:00Z=falls asleep
1518-07-10T00:37:00Z=falls asleep
1518-09-28T00:48:00Z=falls asleep
1518-06-07T00:28:00Z=falls asleep
1518-06-03T00:00:00Z=2311 begins shift
1518-05-28T23:58:00Z=1031 begins shift
1518-05-04T23:51:00Z=353 begins shift
1518-10-16T23:57:00Z=2539 begins shift
1518-07-30T23:57:00Z=3371 begins shift
1518-04-09T00:44:00Z=falls asleep
1518-03-21T00:46:00Z=wakes up
1518-10-21T00:40:00Z=wakes up
1518-10-28T00:02:00Z=falls asleep
1518-04-06T00:11:00Z=falls asleep
1518-05-10T00:55:00Z=wakes up
1518-10-18T00:57:00Z=wakes up
1518-05-14T00:25:00Z=falls asleep
1518-09-05T00:54:00Z=falls asleep
1518-09-06T00:49:00Z=wakes up
1518-06-07T00:04:00Z=1879 begins shift
1518-11-10T23:51:00Z=569 begins shift
1518-10-05T00:30:00Z=falls asleep
1518-06-26T00:30:00Z=falls asleep
1518-07-06T00:50:00Z=falls asleep
1518-05-24T00:36:00Z=falls asleep
1518-08-26T23:54:00Z=353 begins shift
1518-09-21T00:02:00Z=3371 begins shift
1518-04-22T00:52:00Z=falls asleep
1518-08-10T00:03:00Z=falls asleep
1518-11-19T23:53:00Z=353 begins shift
1518-04-26T00:36:00Z=falls asleep
1518-08-04T00:40:00Z=wakes up
1518-06-05T23:46:00Z=1063 begins shift
1518-07-09T00:20:00Z=falls asleep
1518-05-13T00:45:00Z=wakes up
1518-05-14T00:26:00Z=wakes up
1518-08-11T00:21:00Z=wakes up
1518-06-15T23:50:00Z=1063 begins shift
1518-11-19T00:15:00Z=falls asleep
1518-04-07T00:04:00Z=1619 begins shift
1518-07-31T00:24:00Z=falls asleep
1518-10-25T00:14:00Z=falls asleep
1518-10-06T00:46:00Z=falls asleep
1518-05-17T00:35:00Z=falls asleep
1518-07-30T00:57:00Z=falls asleep
1518-04-29T00:04:00Z=1879 begins shift
1518-04-11T00:24:00Z=falls asleep
1518-11-14T23:56:00Z=2671 begins shift
1518-06-14T00:04:00Z=falls asleep
1518-05-23T00:00:00Z=2671 begins shift
1518-08-01T00:48:00Z=wakes up
1518-08-07T00:45:00Z=falls asleep
1518-10-22T23:59:00Z=307 begins shift
1518-05-25T00:21:00Z=wakes up
1518-11-19T00:22:00Z=wakes up
1518-10-12T00:10:00Z=falls asleep
1518-03-17T00:43:00Z=falls asleep
1518-09-13T00:07:00Z=falls asleep
1518-06-25T00:54:00Z=wakes up
1518-04-02T00:50:00Z=wakes up
1518-05-25T00:30:00Z=falls asleep
1518-04-01T23:46:00Z=1997 begins shift
1518-10-21T00:24:00Z=falls asleep
1518-10-26T00:03:00Z=1153 begins shift
1518-04-09T00:55:00Z=wakes up
1518-05-06T00:56:00Z=wakes up
1518-03-17T00:47:00Z=wakes up
1518-09-28T00:04:00Z=1997 begins shift
1518-04-25T00:14:00Z=falls asleep
1518-08-17T00:03:00Z=falls asleep
1518-09-03T23:49:00Z=2351 begins shift
1518-06-10T23:50:00Z=2411 begins shift
1518-05-02T00:38:00Z=wakes up
1518-04-08T00:59:00Z=wakes up
1518-07-17T00:30:00Z=falls asleep
1518-10-29T00:00:00Z=2671 begins shift
1518-06-17T00:04:00Z=falls asleep
1518-08-02T00:55:00Z=falls asleep
1518-10-27T00:46:00Z=falls asleep
1518-05-24T23:49:00Z=1543 begins shift
1518-09-11T00:42:00Z=wakes up
1518-05-10T00:25:00Z=wakes up
1518-04-27T00:49:00Z=wakes up
1518-07-28T00:04:00Z=3371 begins shift
1518-07-29T00:46:00Z=wakes up
1518-10-10T00:45:00Z=wakes up
1518-04-11T00:33:00Z=wakes up
1518-07-04T00:21:00Z=falls asleep
1518-04-05T00:08:00Z=falls asleep
1518-04-15T00:48:00Z=wakes up
1518-11-10T00:03:00Z=293 begins shift
1518-04-26T00:02:00Z=353 begins shift
1518-08-04T00:20:00Z=falls asleep
1518-03-15T00:56:00Z=wakes up
1518-10-07T00:16:00Z=falls asleep
1518-04-09T00:02:00Z=falls asleep
1518-06-03T00:34:00Z=falls asleep
1518-08-08T00:27:00Z=falls asleep
1518-08-16T23:51:00Z=2539 begins shift
1518-06-24T00:00:00Z=353 begins shift
1518-03-31T00:43:00Z=wakes up
1518-10-30T00:37:00Z=falls asleep
1518-05-10T00:04:00Z=falls asleep
1518-07-08T00:43:00Z=wakes up
1518-11-01T00:38:00Z=wakes up
1518-09-10T00:29:00Z=falls asleep
1518-07-30T00:04:00Z=1879 begins shift
1518-04-17T00:06:00Z=falls asleep
1518-07-07T00:38:00Z=wakes up
1518-07-31T00:33:00Z=wakes up
1518-09-20T00:55:00Z=wakes up
1518-10-22T00:23:00Z=falls asleep
1518-05-30T00:46:00Z=wakes up
1518-11-15T00:31:00Z=falls asleep
1518-04-05T00:21:00Z=wakes up
1518-08-25T00:33:00Z=wakes up
1518-07-22T00:41:00Z=wakes up
1518-11-18T00:13:00Z=wakes up
1518-07-05T00:42:00Z=falls asleep
1518-06-23T00:00:00Z=131 begins shift
1518-11-12T00:02:00Z=131 begins shift
1518-07-29T00:57:00Z=wakes up
1518-04-20T00:02:00Z=1543 begins shift
1518-06-07T00:52:00Z=falls asleep
1518-05-04T00:54:00Z=falls asleep
1518-06-17T00:32:00Z=wakes up
1518-06-09T00:00:00Z=1063 begins shift
1518-10-17T00:34:00Z=falls asleep
1518-06-16T00:02:00Z=falls asleep
1518-09-05T00:48:00Z=wakes up
1518-06-08T00:59:00Z=wakes up
1518-10-04T00:21:00Z=wakes up
1518-07-02T00:36:00Z=falls asleep
1518-08-03T00:58:00Z=wakes up
1518-07-01T00:03:00Z=569 begins shift
1518-10-03T00:31:00Z=wakes up
1518-08-22T00:42:00Z=wakes up
1518-09-02T00:27:00Z=falls asleep
1518-11-03T00:30:00Z=wakes up
1518-04-28T00:10:00Z=falls asleep
1518-04-27T00:57:00Z=wakes up
1518-06-13T00:45:00Z=wakes up
1518-07-02T00:50:00Z=wakes up
1518-08-29T00:11:00Z=falls asleep
1518-05-20T00:47:00Z=wakes up
1518-09-21T00:35:00Z=wakes up
1518-06-02T00:54:00Z=wakes up
1518-08-08T00:54:00Z=wakes up
1518-07-18T00:42:00Z=wakes up
1518-07-29T00:01:00Z=2053 begins shift
1518-10-08T00:47:00Z=wakes up
1518-05-16T00:32:00Z=falls asleep
1518-09-07T23:57:00Z=1031 begins shift
1518-04-04T00:00:00Z=2539 begins shift
1518-04-28T00:42:00Z=wakes up
1518-08-13T00:00:00Z=1031 begins shift
1518-03-25T00:09:00Z=falls asleep
1518-05-13T00:18:00Z=falls asleep
1518-04-03T00:21:00Z=wakes up
1518-05-31T23:58:00Z=2053 begins shift
1518-07-14T00:03:00Z=1879 begins shift
1518-10-24T23:57:00Z=307 begins shift
1518-09-21T00:49:00Z=wakes up
1518-09-19T00:37:00Z=wakes up
1518-09-08T00:15:00Z=falls asleep
1518-05-03T00:59:00Z=wakes up
1518-09-08T00:45:00Z=wakes up
1518-05-25T00:56:00Z=wakes up
1518-07-01T00:43:00Z=wakes up
1518-06-02T00:41:00Z=falls asleep
1518-06-07T23:57:00Z=2351 begins shift
1518-04-15T00:28:00Z=falls asleep
1518-10-28T00:47:00Z=wakes up
1518-04-21T00:52:00Z=wakes up
1518-07-12T00:08:00Z=falls asleep
1518-06-09T00:55:00Z=wakes up
1518-07-13T00:57:00Z=wakes up
1518-09-15T00:56:00Z=wakes up
1518-06-19T00:43:00Z=wakes up
1518-04-18T23:57:00Z=2411 begins shift
1518-10-06T00:02:00Z=449 begins shift
1518-05-23T00:46:00Z=wakes up
1518-04-16T00:03:00Z=353 begins shift
1518-08-08T00:08:00Z=falls asleep
1518-06-30T00:02:00Z=1997 begins shift
1518-09-13T00:45:00Z=wakes up
1518-08-24T00:40:00Z=wakes up
1518-11-05T00:55:00Z=wakes up
1518-03-14T23:57:00Z=1063 begins shift
1518-07-20T23:59:00Z=1063 begins shift
1518-05-11T00:38:00Z=wakes up
1518-08-25T00:26:00Z=falls asleep
1518-10-30T00:15:00Z=falls asleep
1518-09-29T00:45:00Z=falls asleep
1518-09-05T00:03:00Z=2539 begins shift
1518-07-25T00:49:00Z=wakes up
1518-05-12T00:14:00Z=wakes up
1518-06-21T00:29:00Z=wakes up
1518-03-16T00:19:00Z=falls asleep
1518-04-17T00:57:00Z=falls asleep
1518-04-29T00:58:00Z=wakes up
1518-09-21T00:22:00Z=falls asleep
1518-07-22T23:57:00Z=1153 begins shift
1518-08-15T00:43:00Z=falls asleep
1518-10-02T23:54:00Z=1879 begins shift
1518-09-29T23:58:00Z=2351 begins shift
1518-06-28T00:53:00Z=wakes up
1518-04-11T00:38:00Z=falls asleep
1518-07-17T00:19:00Z=wakes up
1518-05-09T23:51:00Z=131 begins shift
1518-10-03T00:00:00Z=falls asleep
1518-09-21T00:45:00Z=falls asleep
1518-09-08T00:58:00Z=wakes up
1518-05-17T00:46:00Z=wakes up
1518-04-01T00:01:00Z=falls asleep
1518-11-10T00:10:00Z=wakes up
1518-10-27T00:48:00Z=wakes up
1518-06-30T00:18:00Z=falls asleep
1518-07-16T00:04:00Z=2351 begins shift
1518-08-06T23:56:00Z=1997 begins shift
1518-05-23T00:49:00Z=falls asleep
1518-08-15T00:44:00Z=wakes up
1518-06-24T00:51:00Z=wakes up
1518-03-17T00:53:00Z=falls asleep
1518-04-12T00:56:00Z=falls asleep
1518-06-18T23:56:00Z=2351 begins shift
1518-11-15T00:43:00Z=wakes up
1518-10-12T00:51:00Z=wakes up
1518-11-14T00:56:00Z=falls asleep
1518-08-14T00:02:00Z=3371 begins shift
1518-09-25T00:56:00Z=wakes up
1518-10-06T00:24:00Z=falls asleep
1518-05-09T00:48:00Z=falls asleep
1518-10-30T00:18:00Z=wakes up
1518-04-03T00:49:00Z=wakes up
1518-05-04T00:22:00Z=wakes up
1518-08-31T00:00:00Z=1031 begins shift
1518-09-02T00:00:00Z=353 begins shift
1518-06-30T00:54:00Z=falls asleep
1518-06-14T00:51:00Z=wakes up
1518-05-13T00:32:00Z=falls asleep
1518-08-21T00:54:00Z=wakes up
1518-03-23T00:00:00Z=1153 begins shift
1518-05-30T00:33:00Z=falls asleep
1518-06-21T00:04:00Z=falls asleep
1518-04-06T00:03:00Z=1619 begins shift
1518-06-30T00:59:00Z=wakes up
1518-05-04T00:59:00Z=wakes up
1518-08-11T00:30:00Z=falls asleep
1518-06-19T00:14:00Z=falls asleep
1518-07-18T00:15:00Z=falls asleep
1518-06-25T00:02:00Z=353 begins shift
1518-07-22T00:25:00Z=falls asleep
1518-05-10T00:36:00Z=falls asleep
1518-08-29T00:36:00Z=wakes up
1518-11-20T00:06:00Z=wakes up
1518-09-16T23:56:00Z=331 begins shift
1518-07-09T00:25:00Z=wakes up
1518-09-14T00:39:00Z=wakes up
1518-05-12T00:28:00Z=falls asleep
1518-03-19T23:56:00Z=1031 begins shift
1518-08-27T00:55:00Z=falls asleep
1518-11-05T00:41:00Z=falls asleep
1518-06-27T00:57:00Z=wakes up
1518-06-26T00:04:00Z=2053 begins shift
1518-07-11T00:00:00Z=449 begins shift
1518-09-01T00:04:00Z=2671 begins shift
1518-07-09T00:55:00Z=falls asleep
1518-06-05T00:09:00Z=falls asleep
1518-07-06T00:59:00Z=wakes up
1518-05-07T00:01:00Z=falls asleep
1518-04-30T00:46:00Z=falls asleep
1518-03-26T23:53:00Z=2539 begins shift
1518-09-24T00:22:00Z=falls asleep
1518-09-30T00:13:00Z=falls asleep
1518-09-29T00:48:00Z=wakes up
1518-07-21T23:56:00Z=449 begins shift
1518-08-08T00:33:00Z=wakes up
1518-07-23T00:14:00Z=wakes up
1518-06-14T00:38:00Z=falls asleep
1518-10-25T00:30:00Z=wakes up
1518-09-11T00:45:00Z=falls asleep
1518-06-13T00:40:00Z=wakes up
1518-11-07T23:57:00Z=1543 begins shift
1518-03-23T00:22:00Z=falls asleep
1518-04-12T00:58:00Z=wakes up
1518-05-10T00:40:00Z=wakes up
1518-11-16T00:52:00Z=wakes up
1518-08-02T00:51:00Z=wakes up
1518-06-04T23:59:00Z=2311 begins shift
1518-11-20T00:00:00Z=falls asleep
1518-04-14T00:28:00Z=wakes up
1518-07-12T00:54:00Z=falls asleep
1518-05-10T00:22:00Z=falls asleep
1518-05-27T00:02:00Z=falls asleep
1518-04-19T00:52:00Z=wakes up
1518-04-20T00:23:00Z=wakes up
1518-11-01T00:01:00Z=1063 begins shift
1518-08-09T00:50:00Z=falls asleep
1518-10-23T00:37:00Z=falls asleep
1518-06-18T00:37:00Z=falls asleep
1518-07-23T23:58:00Z=2351 begins shift
1518-06-22T00:52:00Z=wakes up
1518-10-12T00:28:00Z=wakes up
1518-11-06T00:35:00Z=falls asleep
1518-09-28T00:22:00Z=wakes up
1518-07-25T00:06:00Z=falls asleep
1518-05-04T00:00:00Z=449 begins shift
1518-04-06T00:42:00Z=wakes up
1518-09-22T00:15:00Z=falls asleep
1518-11-23T00:12:00Z=falls asleep
1518-07-27T00:03:00Z=1619 begins shift
1518-08-11T23:51:00Z=569 begins shift
1518-06-13T23:53:00Z=131 begins shift
1518-11-18T00:02:00Z=falls asleep
1518-08-11T00:56:00Z=wakes up
1518-09-07T00:00:00Z=449 begins shift
1518-06-20T23:53:00Z=1619 begins shift
1518-05-21T00:04:00Z=2411 begins shift
1518-06-12T00:51:00Z=falls asleep
1518-05-02T00:35:00Z=falls asleep
1518-05-05T00:52:00Z=wakes up
1518-04-30T00:58:00Z=wakes up
1518-07-03T00:52:00Z=wakes up
1518-08-05T00:50:00Z=falls asleep
1518-07-23T00:33:00Z=falls asleep
1518-03-21T23:57:00Z=1153 begins shift
1518-04-11T00:48:00Z=wakes up
1518-08-26T00:01:00Z=331 begins shift
1518-05-09T00:55:00Z=wakes up
1518-10-03T23:48:00Z=2351 begins shift
1518-09-20T00:54:00Z=falls asleep
1518-05-10T00:13:00Z=wakes up
1518-05-13T00:27:00Z=wakes up
1518-10-10T23:56:00Z=449 begins shift
1518-06-14T23:57:00Z=2351 begins shift
1518-07-06T00:53:00Z=wakes up
1518-09-29T00:00:00Z=2411 begins shift
1518-11-06T00:01:00Z=2671 begins shift
1518-04-29T00:29:00Z=falls asleep
1518-09-11T00:24:00Z=falls asleep
1518-04-08T23:50:00Z=293 begins shift
1518-11-04T00:25:00Z=falls asleep
1518-03-14T00:55:00Z=wakes up
1518-04-07T23:59:00Z=1879 begins shift
1518-03-31T00:46:00Z=falls asleep
1518-06-22T00:05:00Z=falls asleep
1518-06-29T00:43:00Z=falls asleep
1518-04-07T00:45:00Z=wakes up
1518-05-14T00:44:00Z=wakes up
1518-09-06T00:31:00Z=falls asleep
1518-11-19T00:00:00Z=1153 begins shift
1518-05-07T00:25:00Z=wakes up
1518-09-03T00:46:00Z=wakes up
1518-09-14T23:46:00Z=1997 begins shift
1518-08-07T00:37:00Z=wakes up
1518-11-16T23:59:00Z=2539 begins shift
1518-09-02T00:59:00Z=wakes up
1518-10-26T00:58:00Z=wakes up
1518-03-20T00:18:00Z=falls asleep
1518-11-06T00:49:00Z=wakes up
1518-05-14T00:36:00Z=falls asleep
1518-04-24T00:54:00Z=wakes up
1518-09-28T00:55:00Z=wakes up
1518-03-17T00:06:00Z=falls asleep
1518-10-30T23:58:00Z=2053 begins shift
1518-06-30T00:23:00Z=wakes up
1518-06-12T00:47:00Z=wakes up
1518-09-08T00:50:00Z=falls asleep
1518-04-17T00:41:00Z=wakes up
1518-04-29T00:47:00Z=wakes up
1518-11-03T00:51:00Z=wakes up
1518-03-30T00:09:00Z=wakes up
1518-08-31T00:16:00Z=falls asleep
1518-11-15T23:59:00Z=353 begins shift
1518-10-08T00:07:00Z=falls asleep
1518-04-16T00:42:00Z=falls asleep
1518-09-02T00:37:00Z=falls asleep
1518-07-28T00:11:00Z=falls asleep
1518-07-18T00:04:00Z=1997 begins shift
1518-08-14T00:48:00Z=wakes up
1518-04-10T00:57:00Z=wakes up
1518-11-22T23:57:00Z=2053 begins shift
1518-05-18T00:56:00Z=falls asleep
1518-05-14T00:47:00Z=falls asleep
1518-04-14T23:58:00Z=2671 begins shift
1518-05-09T00:26:00Z=wakes up
1518-05-23T00:53:00Z=wakes up
1518-04-04T00:26:00Z=falls asleep
1518-11-16T00:18:00Z=wakes up
1518-07-09T00:29:00Z=falls asleep
1518-04-27T23:53:00Z=1153 begins shift
1518-08-21T00:03:00Z=1619 begins shift
1518-06-21T00:58:00Z=wakes up
1518-10-20T00:01:00Z=1997 begins shift
1518-10-02T00:55:00Z=wakes up
1518-09-12T00:10:00Z=wakes up
1518-05-03T00:01:00Z=2311 begins shift
1518-10-04T00:45:00Z=falls asleep
1518-05-06T00:14:00Z=falls asleep
1518-05-15T00:53:00Z=falls asleep
1518-08-11T00:18:00Z=falls asleep
1518-10-05T00:01:00Z=2351 begins shift
1518-06-14T00:12:00Z=wakes up
1518-03-27T00:21:00Z=wakes up
1518-07-03T00:28:00Z=falls asleep
1518-10-10T00:38:00Z=wakes up
1518-11-14T00:59:00Z=wakes up
1518-04-27T00:15:00Z=falls asleep
1518-06-17T23:59:00Z=3371 begins shift
1518-08-12T00:01:00Z=wakes up
1518-06-06T00:32:00Z=falls asleep
1518-09-10T00:42:00Z=wakes up
1518-04-20T00:29:00Z=falls asleep
1518-08-01T00:51:00Z=falls asleep
1518-10-01T00:55:00Z=wakes up
1518-08-24T23:53:00Z=1543 begins shift
1518-05-14T00:03:00Z=307 begins shift
1518-03-23T00:55:00Z=wakes up
1518-10-24T00:26:00Z=wakes up
1518-04-21T00:19:00Z=falls asleep
1518-10-24T00:31:00Z=falls asleep
1518-09-26T00:21:00Z=falls asleep
1518-10-10T00:31:00Z=falls asleep
1518-04-10T23:57:00Z=1063 begins shift
1518-09-09T00:08:00Z=falls asleep
1518-07-30T00:20:00Z=falls asleep
1518-08-19T00:44:00Z=falls asleep
1518-11-13T00:41:00Z=wakes up
1518-05-15T23:56:00Z=3371 begins shift
1518-10-14T00:03:00Z=353 begins shift
1518-10-10T00:03:00Z=3371 begins shift
1518-06-12T00:09:00Z=wakes up
1518-06-04T00:51:00Z=wakes up
1518-07-12T23:57:00Z=1619 begins shift
1518-03-17T00:00:00Z=2311 begins shift
1518-05-12T00:40:00Z=falls asleep
1518-08-19T23:58:00Z=1489 begins shift
1518-04-29T23:56:00Z=1153 begins shift
1518-11-07T00:00:00Z=2411 begins shift
1518-11-23T00:29:00Z=wakes up
1518-05-31T00:32:00Z=falls asleep
1518-06-24T00:46:00Z=falls asleep
1518-07-04T23:56:00Z=2411 begins shift
1518-08-02T00:57:00Z=wakes up
1518-10-10T00:57:00Z=falls asleep
1518-09-16T00:02:00Z=2539 begins shift
1518-10-06T00:30:00Z=wakes up
1518-06-24T00:20:00Z=falls asleep
1518-07-07T23:50:00Z=2411 begins shift
1518-03-31T00:48:00Z=wakes up
1518-09-26T00:47:00Z=wakes up
1518-07-31T23:58:00Z=2671 begins shift
1518-05-28T00:31:00Z=falls asleep
1518-08-19T00:03:00Z=falls asleep
1518-07-21T00:21:00Z=falls asleep
1518-06-16T00:44:00Z=wakes up
1518-10-22T00:00:00Z=1153 begins shift
1518-05-16T00:56:00Z=wakes up
1518-08-22T00:33:00Z=falls asleep
1518-11-08T00:08:00Z=falls asleep
1518-10-19T00:33:00Z=wakes up
1518-05-14T00:49:00Z=wakes up
1518-07-19T00:25:00Z=falls asleep
1518-04-12T23:57:00Z=2351 begins shift
1518-09-04T00:55:00Z=wakes up
1518-06-13T00:49:00Z=falls asleep
1518-04-15T00:47:00Z=falls asleep
1518-08-03T00:55:00Z=falls asleep
1518-07-19T23:56:00Z=2351 begins shift
1518-04-01T00:48:00Z=wakes up
1518-07-19T00:04:00Z=353 begins shift
1518-03-27T00:42:00Z=falls asleep
1518-07-11T00:20:00Z=falls asleep
1518-10-16T00:17:00Z=falls asleep
1518-09-01T00:34:00Z=falls asleep
1518-03-13T23:56:00Z=2539 begins shift
1518-04-23T00:06:00Z=falls asleep
1518-10-04T00:59:00Z=wakes up
1518-11-02T00:50:00Z=wakes up
1518-09-06T00:03:00Z=falls asleep
1518-09-01T00:17:00Z=wakes up
1518-04-27T00:54:00Z=falls asleep
1518-04-14T00:53:00Z=falls asleep
1518-10-18T00:04:00Z=1031 begins shift
1518-04-28T00:03:00Z=wakes up
1518-03-15T23:56:00Z=2539 begins shift
1518-07-26T00:54:00Z=wakes up
1518-07-07T00:12:00Z=falls asleep
1518-07-07T00:03:00Z=2311 begins shift
1518-08-09T23:50:00Z=131 begins shift
1518-06-05T00:57:00Z=wakes up
1518-07-23T00:13:00Z=falls asleep
1518-03-22T00:52:00Z=wakes up
1518-04-08T00:54:00Z=falls asleep
1518-10-15T00:58:00Z=wakes up
1518-05-20T00:14:00Z=falls asleep
1518-10-30T00:41:00Z=wakes up
1518-08-31T00:58:00Z=wakes up
1518-03-28T00:01:00Z=falls asleep
1518-08-31T00:23:00Z=wakes up
1518-04-17T00:03:00Z=293 begins shift
1518-09-02T00:30:00Z=wakes up
1518-08-10T00:52:00Z=falls asleep
1518-09-17T23:57:00Z=2411 begins shift
1518-06-07T00:58:00Z=wakes up
1518-10-06T23:57:00Z=1543 begins shift
1518-08-23T00:22:00Z=falls asleep
1518-10-24T00:19:00Z=falls asleep
1518-05-07T00:55:00Z=wakes up
1518-06-20T00:20:00Z=falls asleep
1518-11-21T00:52:00Z=wakes up
1518-11-04T00:49:00Z=wakes up
1518-08-09T00:00:00Z=2053 begins shift
1518-07-24T00:52:00Z=wakes up
1518-10-10T00:44:00Z=falls asleep
1518-10-26T00:41:00Z=wakes up
1518-06-23T00:47:00Z=falls asleep
1518-07-15T00:50:00Z=wakes up
1518-08-04T00:25:00Z=wakes up
1518-10-20T23:57:00Z=2411 begins shift
1518-06-28T00:03:00Z=293 begins shift
1518-08-01T00:55:00Z=wakes up
1518-07-19T00:39:00Z=wakes up
1518-08-21T00:11:00Z=falls asleep
1518-08-27T00:58:00Z=wakes up
1518-04-14T00:57:00Z=wakes up
1518-06-14T00:59:00Z=wakes up
1518-04-07T00:16:00Z=falls asleep
1518-10-03T00:55:00Z=wakes up
1518-04-20T00:16:00Z=falls asleep
1518-10-31T00:30:00Z=wakes up
1518-05-07T00:41:00Z=falls asleep
1518-08-08T00:21:00Z=wakes up
1518-11-07T00:41:00Z=falls asleep
1518-06-28T00:48:00Z=falls asleep
1518-07-03T00:00:00Z=449 begins shift
1518-06-29T00:58:00Z=wakes up
1518-10-19T00:00:00Z=449 begins shift
1518-06-12T00:03:00Z=131 begins shift
1518-08-10T00:56:00Z=wakes up
1518-03-15T00:49:00Z=falls asleep
1518-06-19T00:50:00Z=wakes up
1518-04-04T00:58:00Z=wakes up
1518-05-11T00:00:00Z=1063 begins shift
1518-05-29T00:18:00Z=falls asleep
1518-04-18T00:48:00Z=wakes up
1518-08-09T00:56:00Z=wakes up
1518-10-18T00:13:00Z=falls asleep
1518-04-23T00:01:00Z=1997 begins shift
1518-04-03T00:40:00Z=falls asleep
1518-10-29T00:48:00Z=falls asleep
1518-03-15T00:07:00Z=falls asleep
1518-08-10T23:58:00Z=1031 begins shift
1518-10-10T00:58:00Z=wakes up
1518-04-03T00:16:00Z=falls asleep
1518-07-04T00:52:00Z=wakes up
1518-05-01T00:20:00Z=falls asleep
1518-08-04T00:02:00Z=1997 begins shift
1518-10-18T00:33:00Z=wakes up
1518-11-20T00:36:00Z=falls asleep
1518-10-13T00:45:00Z=wakes up
1518-06-07T00:34:00Z=wakes up
1518-06-25T00:11:00Z=falls asleep
1518-04-22T00:58:00Z=wakes up
1518-08-17T23:53:00Z=131 begins shift
1518-10-21T00:43:00Z=falls asleep
1518-08-19T00:48:00Z=wakes up
1518-09-16T00:54:00Z=wakes up
1518-08-07T00:15:00Z=falls asleep
1518-06-21T00:39:00Z=falls asleep
1518-07-20T00:34:00Z=wakes up
1518-10-25T00:07:00Z=falls asleep
1518-06-20T00:43:00Z=wakes up
1518-05-02T00:51:00Z=wakes up
1518-06-16T00:09:00Z=wakes up
1518-06-13T00:03:00Z=353 begins shift
1518-11-07T00:50:00Z=wakes up
1518-07-26T00:36:00Z=falls asleep
1518-09-22T00:01:00Z=293 begins shift
1518-07-01T00:40:00Z=falls asleep
1518-09-18T00:41:00Z=falls asleep
1518-05-06T00:02:00Z=307 begins shift
1518-08-28T00:01:00Z=307 begins shift
1518-07-05T23:56:00Z=1031 begins shift
1518-04-02T00:04:00Z=falls asleep
1518-10-19T00:10:00Z=falls asleep
1518-03-30T00:06:00Z=falls asleep
1518-04-13T00:34:00Z=wakes up
1518-06-21T23:50:00Z=1031 begins shift
1518-11-20T00:58:00Z=wakes up
1518-09-29T00:41:00Z=wakes up
1518-11-03T00:03:00Z=293 begins shift
1518-06-01T00:08:00Z=falls asleep
1518-03-27T00:03:00Z=falls asleep
1518-08-19T00:39:00Z=wakes up
1518-06-09T00:42:00Z=falls asleep
1518-05-18T00:40:00Z=wakes up
1518-06-28T23:56:00Z=131 begins shift
1518-03-18T00:58:00Z=wakes up
1518-10-09T00:58:00Z=wakes up
1518-06-19T00:47:00Z=falls asleep
1518-10-26T00:24:00Z=falls asleep
1518-10-05T00:49:00Z=wakes up
1518-10-03T00:46:00Z=falls asleep
1518-05-01T00:57:00Z=wakes up
1518-08-30T00:52:00Z=wakes up
1518-06-04T00:44:00Z=falls asleep
1518-10-18T00:49:00Z=falls asleep
1518-03-24T00:03:00Z=1879 begins shift
1518-11-17T23:46:00Z=569 begins shift
1518-04-09T00:11:00Z=wakes up
1518-08-06T00:18:00Z=falls asleep
1518-07-05T00:51:00Z=wakes up
1518-11-02T00:00:00Z=1543 begins shift
1518-10-31T00:38:00Z=falls asleep
1518-11-02T00:35:00Z=falls asleep
1518-06-06T00:56:00Z=wakes up
1518-04-12T00:46:00Z=falls asleep
1518-04-24T00:33:00Z=wakes up
1518-08-06T00:01:00Z=293 begins shift
1518-04-18T00:03:00Z=falls asleep
1518-09-22T00:54:00Z=falls asleep
1518-10-15T00:55:00Z=falls asleep
1518-09-07T00:07:00Z=falls asleep
1518-07-17T00:01:00Z=falls asleep
1518-08-31T00:54:00Z=falls asleep
1518-06-27T00:04:00Z=2053 begins shift
1518-06-10T00:56:00Z=wakes up
1518-05-31T00:57:00Z=wakes up
1518-03-24T00:54:00Z=wakes up
1518-07-08T00:17:00Z=wakes up
1518-08-28T23:58:00Z=449 begins shift
1518-10-12T00:33:00Z=falls asleep
1518-08-24T00:02:00Z=2539 begins shift
1518-08-02T00:42:00Z=falls asleep
1518-07-19T00:55:00Z=wakes up
1518-07-02T00:55:00Z=wakes up
1518-05-09T00:04:00Z=449 begins shift
1518-11-13T00:27:00Z=falls asleep
1518-11-19T00:46:00Z=wakes up
1518-03-27T00:56:00Z=wakes up
1518-05-12T00:58:00Z=wakes up
1518-04-10T00:44:00Z=wakes up
1518-07-12T00:57:00Z=wakes up
1518-11-17T00:52:00Z=wakes up
1518-10-02T00:44:00Z=falls asleep
1518-08-17T00:40:00Z=falls asleep
1518-06-11T00:52:00Z=wakes up
1518-11-05T00:03:00Z=449 begins shift
1518-06-15T00:19:00Z=falls asleep
1518-05-26T23:46:00Z=353 begins shift
1518-03-29T00:00:00Z=1997 begins shift
1518-09-23T00:34:00Z=wakes up
1518-06-12T00:58:00Z=wakes up
1518-10-30T00:30:00Z=falls asleep
1518-09-25T00:46:00Z=falls asleep
1518-10-06T00:42:00Z=wakes up
1518-04-06T00:35:00Z=falls asleep
1518-09-27T00:55:00Z=wakes up
1518-04-10T00:10:00Z=falls asleep
1518-10-12T00:00:00Z=449 begins shift
1518-07-28T00:39:00Z=wakes up
1518-04-25T00:02:00Z=1031 begins shift
1518-10-07T00:59:00Z=wakes up
1518-06-09T00:38:00Z=wakes up
1518-06-23T00:50:00Z=wakes up
1518-05-28T00:19:00Z=wakes up
1518-08-17T00:50:00Z=wakes up
1518-08-04T00:30:00Z=falls asleep
1518-10-20T00:34:00Z=wakes up
1518-04-17T23:50:00Z=2053 begins shift
1518-05-25T00:04:00Z=falls asleep
1518-07-06T00:57:00Z=falls asleep
1518-06-28T00:37:00Z=wakes up
1518-10-10T00:51:00Z=falls asleep
1518-08-23T00:44:00Z=wakes up
1518-04-10T00:48:00Z=falls asleep
1518-04-29T00:56:00Z=falls asleep
1518-05-26T00:46:00Z=wakes up
1518-08-08T00:45:00Z=falls asleep
1518-10-08T00:31:00Z=wakes up
1518-09-03T00:01:00Z=falls asleep
1518-11-09T00:33:00Z=wakes up
1518-09-16T00:15:00Z=falls asleep
1518-11-14T00:43:00Z=wakes up
1518-10-09T00:53:00Z=falls asleep
1518-04-13T00:54:00Z=wakes up
1518-09-25T00:21:00Z=falls asleep
1518-03-19T00:45:00Z=wakes up
1518-10-01T00:16:00Z=falls asleep
1518-09-18T00:56:00Z=wakes up
1518-03-31T00:39:00Z=falls asleep
1518-04-16T00:25:00Z=falls asleep
1518-08-05T00:59:00Z=wakes up
1518-05-12T00:00:00Z=1543 begins shift
1518-10-21T00:49:00Z=wakes up
1518-09-23T23:56:00Z=307 begins shift
1518-03-25T00:00:00Z=1879 begins shift
1518-07-30T00:58:00Z=wakes up
1518-06-12T00:07:00Z=falls asleep
1518-07-18T00:23:00Z=wakes up
1518-04-14T00:00:00Z=2411 begins shift
1518-09-19T00:16:00Z=falls asleep
1518-07-19T00:43:00Z=falls asleep
1518-08-12T00:00:00Z=falls asleep
1518-08-29T00:53:00Z=falls asleep
1518-08-15T00:28:00Z=falls asleep
1518-04-12T00:47:00Z=wakes up
1518-06-26T00:44:00Z=wakes up
1518-08-22T00:01:00Z=2311 begins shift
1518-10-31T00:19:00Z=falls asleep
1518-09-14T00:57:00Z=wakes up
1518-07-03T23:59:00Z=1619 begins shift
1518-04-28T00:02:00Z=falls asleep
1518-09-18T00:27:00Z=wakes up
1518-07-10T00:04:00Z=falls asleep
1518-08-28T00:51:00Z=falls asleep
1518-07-20T00:06:00Z=falls asleep
1518-10-24T00:34:00Z=wakes up
1518-07-12T00:01:00Z=1879 begins shift
1518-05-15T00:00:00Z=2411 begins shift
1518-04-26T00:50:00Z=wakes up
1518-05-18T00:53:00Z=wakes up
1518-05-21T00:57:00Z=falls asleep
1518-08-24T00:08:00Z=falls asleep
1518-09-01T00:59:00Z=wakes up
1518-08-02T00:04:00Z=2053 begins shift
1518-07-02T00:53:00Z=falls asleep
1518-09-09T00:26:00Z=wakes up
1518-06-13T00:43:00Z=falls asleep
1518-10-13T00:51:00Z=falls asleep
1518-10-14T00:57:00Z=wakes up
1518-04-02T23:57:00Z=1997 begins shift
1518-11-01T00:35:00Z=falls asleep
1518-08-03T00:37:00Z=wakes up
1518-09-01T00:06:00Z=falls asleep
1518-09-05T00:57:00Z=wakes up
1518-05-28T00:02:00Z=2053 begins shift
1518-09-28T00:17:00Z=falls asleep
1518-08-07T23:58:00Z=2671 begins shift
1518-04-19T00:59:00Z=wakes up
1518-10-08T00:01:00Z=1063 begins shift
1518-06-27T00:12:00Z=falls asleep
1518-08-25T00:43:00Z=wakes up
1518-05-09T00:44:00Z=wakes up
1518-06-24T00:41:00Z=wakes up
1518-04-14T00:20:00Z=falls asleep
1518-05-25T23:52:00Z=2311 begins shift
1518-09-22T00:55:00Z=wakes up
1518-07-10T00:31:00Z=wakes up
1518-06-02T00:02:00Z=2053 begins shift
1518-05-19T00:25:00Z=wakes up
1518-05-12T00:08:00Z=falls asleep
1518-07-29T00:51:00Z=falls asleep
1518-03-28T00:42:00Z=wakes up
1518-11-03T00:10:00Z=falls asleep
1518-10-31T00:43:00Z=wakes up
1518-10-01T00:47:00Z=falls asleep
1518-10-29T00:09:00Z=falls asleep
1518-09-19T00:02:00Z=569 begins shift
1518-09-09T00:52:00Z=falls asleep
1518-10-13T00:21:00Z=wakes up
1518-09-14T00:31:00Z=falls asleep
1518-07-14T00:43:00Z=wakes up
1518-10-27T23:50:00Z=1997 begins shift
1518-06-12T00:38:00Z=falls asleep
1518-07-09T00:52:00Z=wakes up
1518-04-10T00:00:00Z=1879 begins shift
1518-10-17T00:48:00Z=wakes up
1518-06-28T00:06:00Z=falls asleep
1518-07-09T23:50:00Z=2351 begins shift
1518-09-30T23:59:00Z=1153 begins shift
1518-05-23T23:57:00Z=1153 begins shift
1518-03-24T00:26:00Z=falls asleep
1518-04-21T00:01:00Z=1997 begins shift
1518-08-25T00:42:00Z=falls asleep
1518-05-28T00:47:00Z=wakes up
1518-09-15T00:49:00Z=falls asleep
1518-11-12T00:21:00Z=falls asleep
1518-05-15T00:56:00Z=wakes up
1518-11-08T00:50:00Z=wakes up
1518-08-28T00:58:00Z=wakes up
1518-10-01T23:59:00Z=2053 begins shift
1518-06-09T00:23:00Z=falls asleep
1518-05-21T00:59:00Z=wakes up
1518-04-13T00:40:00Z=falls asleep
1518-04-13T00:26:00Z=falls asleep
1518-09-15T00:03:00Z=falls asleep
1518-10-14T00:56:00Z=falls asleep
1518-06-06T00:00:00Z=falls asleep
1518-07-13T00:40:00Z=falls asleep
1518-06-13T00:55:00Z=wakes up
1518-03-21T00:03:00Z=1543 begins shift
1518-04-21T00:37:00Z=falls asleep
1518-05-03T00:27:00Z=falls asleep
1518-09-18T00:15:00Z=falls asleep
1518-04-15T00:44:00Z=wakes up
1518-05-24T00:59:00Z=wakes up
1518-04-21T23:59:00Z=1879 begins shift
1518-08-04T23:58:00Z=1879 begins shift
1518-05-18T00:35:00Z=falls asleep
1518-11-14T00:03:00Z=2053 begins shift
1518-08-29T00:58:00Z=wakes up
1518-07-17T00:58:00Z=wakes up
1518-07-28T00:47:00Z=falls asleep
1518-06-30T00:48:00Z=wakes up
1518-10-29T23:58:00Z=569 begins shift
1518-06-20T00:04:00Z=131 begins shift
1518-07-24T00:39:00Z=falls asleep
1518-04-15T00:40:00Z=falls asleep
1518-08-06T00:49:00Z=wakes up
1518-09-11T00:54:00Z=wakes up
1518-04-12T00:38:00Z=falls asleep
1518-03-29T23:57:00Z=1997 begins shift
1518-05-13T00:02:00Z=1063 begins shift
1518-11-17T00:39:00Z=wakes up
1518-09-13T00:00:00Z=2671 begins shift
1518-05-10T00:51:00Z=falls asleep
1518-04-18T00:53:00Z=wakes up
1518-06-10T00:35:00Z=falls asleep
1518-05-22T00:02:00Z=1997 begins shift
1518-05-12T00:31:00Z=wakes up
1518-04-15T00:31:00Z=wakes up
1518-07-11T00:43:00Z=wakes up
1518-07-02T00:00:00Z=131 begins shift
1518-07-16T00:18:00Z=falls asleep
1518-03-25T23:57:00Z=331 begins shift
1518-05-18T00:46:00Z=falls asleep
1518-09-23T00:08:00Z=falls asleep
1518-06-03T23:57:00Z=307 begins shift
1518-03-29T00:58:00Z=wakes up
1518-07-27T00:12:00Z=falls asleep
1518-07-21T00:33:00Z=wakes up
1518-07-23T00:54:00Z=wakes up
1518-08-03T00:33:00Z=falls asleep
1518-11-19T00:41:00Z=falls asleep
1518-03-17T23:58:00Z=293 begins shift
1518-04-19T00:56:00Z=falls asleep
1518-08-31T00:36:00Z=falls asleep
1518-07-17T00:47:00Z=wakes up
1518-08-25T00:02:00Z=falls asleep
1518-03-17T00:38:00Z=wakes up
1518-03-21T00:10:00Z=falls asleep
1518-09-12T00:55:00Z=wakes up
1518-09-24T00:52:00Z=wakes up
1518-05-27T00:59:00Z=wakes up
1518-10-13T00:25:00Z=falls asleep
1518-10-06T00:38:00Z=falls asleep
1518-10-24T00:00:00Z=1031 begins shift
1518-09-11T23:50:00Z=293 begins shift
1518-09-22T00:18:00Z=wakes up
1518-11-16T00:39:00Z=falls asleep
1518-10-30T00:34:00Z=wakes up
1518-05-28T00:18:00Z=falls asleep
1518-05-22T00:11:00Z=falls asleep
1518-07-09T00:43:00Z=falls asleep
1518-05-30T23:59:00Z=2671 begins shift
1518-03-31T23:49:00Z=1063 begins shift
1518-05-09T00:31:00Z=falls asleep
1518-04-26T00:13:00Z=falls asleep
1518-06-13T00:20:00Z=falls asleep
1518-04-24T00:02:00Z=1997 begins shift
1518-07-16T23:52:00Z=1031 begins shift
1518-03-21T00:41:00Z=falls asleep
1518-07-09T00:40:00Z=wakes up
1518-05-06T23:54:00Z=1031 begins shift
1518-06-02T00:57:00Z=falls asleep
1518-09-14T00:00:00Z=131 begins shift
1518-07-18T00:34:00Z=falls asleep
1518-09-27T00:30:00Z=falls asleep
1518-08-13T00:42:00Z=wakes up
1518-06-10T00:51:00Z=falls asleep
1518-08-12T00:49:00Z=wakes up
1518-06-29T00:54:00Z=wakes up
1518-04-30T23:58:00Z=2351 begins shift
1518-03-14T00:43:00Z=falls asleep
1518-04-20T00:49:00Z=wakes up
1518-07-04T00:18:00Z=wakes up
1518-11-10T00:09:00Z=falls asleep
1518-10-26T23:52:00Z=293 begins shift
1518-08-03T00:50:00Z=wakes up
1518-04-17T00:27:00Z=wakes up
1518-04-24T00:41:00Z=falls asleep
1518-04-25T00:29:00Z=wakes up
1518-06-12T00:33:00Z=wakes up
1518-10-01T00:39:00Z=wakes up
1518-08-25T00:54:00Z=wakes up
1518-09-02T23:51:00Z=1619 begins shift
1518-08-09T00:36:00Z=wakes up
1518-07-25T23:58:00Z=2351 begins shift
1518-03-25T00:55:00Z=wakes up
1518-09-22T23:56:00Z=307 begins shift
1518-06-17T00:42:00Z=wakes up
1518-08-17T00:20:00Z=wakes up
1518-09-07T00:32:00Z=wakes up
1518-05-11T00:13:00Z=falls asleep
1518-08-12T00:31:00Z=falls asleep
1518-10-13T00:03:00Z=2539 begins shift
1518-05-02T00:29:00Z=wakes up
1518-06-02T00:59:00Z=wakes up
1518-07-05T00:07:00Z=falls asleep
1518-06-08T00:40:00Z=falls asleep
""".split(separator: "\n")

let sampleInput = """
1518-11-01T00:00:00Z=10 begins shift
1518-11-01T00:05:00Z=falls asleep
1518-11-01T00:25:00Z=wakes up
1518-11-01T00:30:00Z=falls asleep
1518-11-01T00:55:00Z=wakes up
1518-11-01T23:58:00Z=99 begins shift
1518-11-02T00:40:00Z=falls asleep
1518-11-02T00:50:00Z=wakes up
1518-11-03T00:05:00Z=10 begins shift
1518-11-03T00:24:00Z=falls asleep
1518-11-03T00:29:00Z=wakes up
1518-11-04T00:02:00Z=99 begins shift
1518-11-04T00:36:00Z=falls asleep
1518-11-04T00:46:00Z=wakes up
1518-11-05T00:03:00Z=99 begins shift
1518-11-05T00:45:00Z=falls asleep
1518-11-05T00:55:00Z=wakes up
""".split(separator: "\n")
