{BufferedProcess, GrammarRegistry} = require 'atom'

behat_command = 'behat'
grammar = null

module.exports =
    activate: (state) ->
        grammar = atom.grammars.grammarForScopeName('source.feature')
        atom.commands.add 'atom-text-editor', 'behat-fr-atom:check_syntax', => @check_syntax
        atom.commands.add 'atom-workspace', 'behat-fr-atom:launch-test', => @launch_test

    check_syntax: ->
      # check syntax of the current feature file
      # editor = atom.workspace.getActiveEditor()
        console.log("check_syntax #{editor.getGrammar().scopeName}")
        if editor.getGrammar() == grammar
            args = ['--story-syntax',  '--lang fr', editor.getPath()]
            output = (output) -> console.log(output)
            exitput = (code) -> console.log("exit code behat --story-syntax --lang fr #{editor.getPath()}: #{code}")
            process = new BufferedProcess({ behat_command, args, output, exitput })

    launch_test: ->
        # Launch behat in the current main directory
        # $behat_command
        treeview = atom.workspace.panelForItem('tree-view')
