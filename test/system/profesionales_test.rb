require "application_system_test_case"

class ProfesionalesTest < ApplicationSystemTestCase
  setup do
    @profesionale = profesionales(:one)
  end

  test "visiting the index" do
    visit profesionales_url
    assert_selector "h1", text: "Profesionales"
  end

  test "creating a Profesionale" do
    visit profesionales_url
    click_on "New Profesionale"

    fill_in "Apellido materno", with: @profesionale.apellido_materno
    fill_in "Apellido paterno", with: @profesionale.apellido_paterno
    fill_in "Descripcion", with: @profesionale.descripcion
    fill_in "Nombre", with: @profesionale.nombre
    fill_in "Profesion", with: @profesionale.profesion
    fill_in "Rut", with: @profesionale.rut
    fill_in "Segundo nombre", with: @profesionale.segundo_nombre
    click_on "Create Profesionale"

    assert_text "Profesionale was successfully created"
    click_on "Back"
  end

  test "updating a Profesionale" do
    visit profesionales_url
    click_on "Edit", match: :first

    fill_in "Apellido materno", with: @profesionale.apellido_materno
    fill_in "Apellido paterno", with: @profesionale.apellido_paterno
    fill_in "Descripcion", with: @profesionale.descripcion
    fill_in "Nombre", with: @profesionale.nombre
    fill_in "Profesion", with: @profesionale.profesion
    fill_in "Rut", with: @profesionale.rut
    fill_in "Segundo nombre", with: @profesionale.segundo_nombre
    click_on "Update Profesionale"

    assert_text "Profesionale was successfully updated"
    click_on "Back"
  end

  test "destroying a Profesionale" do
    visit profesionales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profesionale was successfully destroyed"
  end
end
