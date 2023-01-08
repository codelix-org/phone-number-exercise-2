# Phone Number Formatter Trail - Exercise #2

## Getting started

```
# Navigate to the trail folder
cd phone-number-formatter-trail

# Clone this repo
git clone git@github.com:codelix-org/phone-number-exercise-2.git 
cd phone-number-exercise-2

# Install dependencies
bundle 

# create branch
git checkout -b attempt-YOURNAMEHERE

# Copy your code from exercise 1 (just lib, not spec) and commit
cp -R ../phone-number-exercise-1/lib ./
git add .
git commit -m 'add code from exercise 1'

# See the failing specs
bundle exec rspec --format documentation
```

## Exercise instructions

We added the code for the [happy path](https://en.wikipedia.org/wiki/Happy_path) for formatting the phone number in [exercise-1](https://github.com/codelix-org/phone-number-exercise-1).
In this exercise you'll be adding the code that handles the unhappy path (i.e. we'll be giving it invalid numbers).

Look at the specs in `spec/formatter/phone_number_spec.rb`.

Your task is to make those specs pass by writing the code in `lib/formatter/phone_number.rb`

When you've completed the task, push your branch to github and create a PR for the branch.

## Marking this exercise

This exercise is marked automatically by a github action. When you create a PR (or push commits to an opened PR)
it will run the specs, and if they pass it will send a notification to Codelix to notify you have passed the exercise.

You should see this updated fairly quickly in www.codelix.co.uk but if you don't you can check the `Actions` tab in this repo
to see if the action failed and reach out to @Robfaldo for help.
