vim.g.projectionist_heuristics = {
  artisan = {
    ['app/Models/*.php'] = {
      type = 'model',
      alternate = 'tests/Unit/{}Test.php'
    },
    ['app/Http/Controllers/*.php'] = {
      type = 'controller',
    },
    ['routes/*.php'] = {
      type = 'route',
    },
    ['database/migrations/*.php'] = {
      type = 'migration',
    },
    ['app/*.php'] = {
      type = 'source',
      alternate = {
        'tests/Unit/{}Test.php',
        'tests/Feature/{}Test.php',
      },
    },
    ['app/Http/Livewire/*.php'] = {
      type = 'source Livewire',
      alternate = {
        'ressources/views/livewire/{dirname}/{snakecase}.blade.php',
      },
    },
    ['tests/Feature/*Test.php'] = {
      type = 'test',
      alternate = 'app/{}.php',
    },
    ['tests/Unit/*Test.php'] = {
      type = 'test',
      alternate = 'app/Models/{}.php',
    },
  },
}
