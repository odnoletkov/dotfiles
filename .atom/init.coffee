atom.commands.add '.tree-view', 'tree-view:preview', ->
  for panel in atom.workspace.getLeftPanels()
    if panel.item.constructor.name == "TreeView"
      panel.item.openSelectedEntry(pending: true, activatePane: false)
      return
