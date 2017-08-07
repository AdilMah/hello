project('hello', 'vala', 'c')

gnome = import('gnome')

helloresource = gnome.compile_resources(
	'hello-resources', 'hello.gresources.xml',
	source_dir : '.')

app_srcs = [
	'main.vala',
	helloresource
]

app_deps = [
	dependency('glib-2.0'),
	dependency('gobject-2.0'),
	dependency('gtk+-3.0')
]

add_global_arguments('--target-glib=2.38', language : 'vala')

executable('app', app_srcs,
           dependencies : app_deps)

