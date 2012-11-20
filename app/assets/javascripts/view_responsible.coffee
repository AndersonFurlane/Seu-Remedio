class window.ViewResponsible
  constructor: ->
    @formResponsible = $('#form_responsible')

    @showForm $('input[type=radio]:checked').attr("value")

    $('input[type=radio]').click (e) =>
      value = $(e.currentTarget).attr("value")
      @showForm(value)

  showForm: (value) ->
    if value == "true"
      @formResponsible.hide()
    else
      @formResponsible.show()

