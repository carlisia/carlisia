# scripts

## About
Most of the [scripts in this directory](https://github.com/carlisia/carlisia/tree/main/scripts) are for monitoring GitHub (GH) PRs and Issues on a command line, to avoid doing so on a browser. Others are for infra-structure related operations. Most are pointing to the Knative project, more specifically the ones related to Networking. The GH related scripts can be used "as is" if you have the [requirements](#requirements) and are authenticated into the GH api via the CLI, since they make use of the `author:@me` param, instead of a hard-coded GH username. They can also be easily adapted.

Some scripts generate output like the bit below. I have my environment setup such that if I click on that output link, that project will open in my default editor. And my editor has plugins that allow me to do code reviews (as well as create PRs) locally, which saves a ton of time and risk of distractions!

```
🦎 project:       networking, 1
📕 open in editor:  /Users/carlisiac/working/src/github.com/knative/networking
```

There is currently a lot of repeated bits of script ([to be addressed](#todos)).

## How to use
There are so many different ways to automate the invokation of a script. I  more frequently use these by having a listing of their paths on a file [[ongoing#Scripts]], then:
- hitting a shortcut to go to the line where the path to the script I want to run is
- hitting a shortcut to run the command on that line

## Requirements
- Most if not all of these scripts require the [GitHub CLI](https://cli.github.com/)
- Some scripts use [nosarthur/gita: Manage many git repos with sanity](https://github.com/nosarthur/gita)
  - These are my configs for that: [dotfiles/gita/.config/gita at main · carlisia/dotfiles](https://github.com/carlisia/dotfiles/tree/main/gita/.config/gita)

## todos
- [ ] for scripts that don't have a link to the corresponding GH repo which is "openable" in the default editor, create those links
- [ ] remove the bits that repeat
- [ ] look at [[gh-queries]] for alternative ways of querying the API
- [ ] modify scripts to take inputs so some can be consolidated
- [ ] maybe turn this into a CLI app

[//begin]: # "Autogenerated link references for markdown compatibility"
[ongoing#Scripts]: ../knative/ongoing.md "ongoing"
[gh-queries]: ../scrapbook/2022/gh-queries.md "gh queries"
[//end]: # "Autogenerated link references"