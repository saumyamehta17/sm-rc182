Railscast sm-rc-182
===================

Gemfile
```
gem 'paperclip'
```
To download JCROP
```
http://shareyourtechskills.blogspot.in/2011/01/jcrop-with-paper-clip-plugin.html
```

Scaffolding
```
#todo
rails g paperclip user photo for User Model
```

In user.rb
```
reprocess! method is used to regenerate  the graphic file.
```
custom processor
```
now need to instruct paperclip how to do cropping
```
processor
```
create paperclip_processor folder under lib/tasks then create file cropper.rb
```
users/_form.html.erb
```
See multiple select from list view
```