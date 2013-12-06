from django.views.generic import RedirectView

urlpatterns = patterns('',
    (r'^somepage/$', RedirectView.as_view(url='/anotherpage/')),
)