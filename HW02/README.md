## HW02

- use `Ruby >= 2.6`
- please create fork from the https://github.com/labs-ruby/homeworks-2020 (should be
  already done)
- then create a new branch `my_hw_02` (!)
- and go to the directory to `HW02`
- create a folder with your name `Name_Surname`
- inside the folder create a file .rb for every task, for example `name_surname_hw_02_t_01.rb` 
- HARD WORK!
- and then create a PR (pull request) to https://github.com/labs-ruby/homeworks master branch
- you homeworks also will be automatically checked by `rubocop`. So, please 
  correct you code if there is a request from the rubocop (https://github.com/rubocop-hq/ruby-style-guide).
- Travis CI should be GREEN

### Tasks:

#### 1. at the input of method `task_1` (read "variable") is sent text:

```bash
10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /grid/2/messages HTTP/1.1" 200 48 0.0498
10.6.246.101 - - [23/Apr/2018:20:30:42 +0300] "POST /grid/2/event HTTP/1.1" 200 - 0.2277
2018-04-23 20:30:42: SSL error, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSLError: System error: Undefined error: 0 - 0>
10.6.246.101 - - [23/Apr/2018:20:29:39 +0300] "POST /grid/2/messages HTTP/1.1" 200 48 0.0290
```

Method `task_1` should return:
- full text of the first line with an error (the presence of the substring `error` in any case)
- If the input is text that does not contain the word `error`, return an empty string

Example:

```ruby
logs = "..." # logs information with error

def task_1()
  # your implementation goes here
end

task_1(logs) # => returns the following line:
# 2018-04-23 20:30:42: SSL error, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSLError: System error: Undefined error: 0 - 0>
```

#### 2. at the input of method `task_2` (read "variable") is sent text:

```bash
10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0498
10.6.246.101 - - [23/Apr/2018:20:30:42 +0300] "POST /test/2/run HTTP/1.1" 200 - 0.2277
2018-04-23 20:30:42: SSL ERROR, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSL: System error: Undefined error: 0 - 0>
10.6.246.101 - - [23/Apr/2018:20:31:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0290
```

Method `task_2` should return:
- an array of formatted strings containing information about post requests;
    - for the example above, the result should be:

```bash
[
  "23/Apr/2018:20:30:39 +0300 FROM: 10.6.246.103 TO: /TEST/2/MESSAGES",
  "23/Apr/2018:20:30:42 +0300 FROM: 10.6.246.101 TO: /TEST/2/RUN",
  "23/Apr/2018:20:31:39 +0300 FROM: 10.6.246.101 TO: /TEST/2/MESSAGES"
]
```

- lines that do not match the format `10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0498` should be ignored
- if there is no suitable string at the input, the method should return an empty array

#### 3. at the input of method `task_3` (read "variable") is sent text:

```bash
2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - Calling core with action: event
2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
2018-04-23 17:17:49.8 ubuntu-xenial[14319] Debug - docker event processed
2018-04-23 17:18:19.5 ubuntu-xenial[14319] Debug - monitoring grid communication health
2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - Calling core with action: messages
2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
2018-04-23 17:18:59.8 ubuntu-xenial[14319] Debug - inside docker_handle_event
```
- The `task_3` method should return a string containing the duration of the action in SECONDS between events that occurred at the time of Calling core with action:
- Between them can be any number of other events.
- For this example, the output will be: `(2018-04-23 17:18:38.8 - 2018-04-23 17:17:49.7) = (38.8 + 10.3) = "49.1"` <- only this number is a string
- If there are no valid events at the entrance or it is the only one to return "0"``

#### 4. An arbitrary string is given, the method `task_4` must return the count of letters and digits in that string.

Example:

```ruby
task_4("hel2!lo") # --> {letters: 5, digits: 1}
task_4("wicked .. !") # --> 6 --- {letters: 6, digits: 0}
```
