require "application_system_test_case"

class ActividadesTest < ApplicationSystemTestCase
  setup do
    @actividade = actividades(:one)
  end

  test "visiting the index" do
    visit actividades_url
    assert_selector "h1", text: "Actividades"
  end

  test "creating a Actividade" do
    visit actividades_url
    click_on "New Actividade"

    fill_in "Descripcion", with: @actividade.descripcion
    fill_in "Fecha", with: @actividade.fecha
    fill_in "Nombre", with: @actividade.nombre
    fill_in "Tipo actividad", with: @actividade.tipo_actividad
    click_on "Create Actividade"

    assert_text "Actividade was successfully created"
    click_on "Back"
  end

  test "updating a Actividade" do
    visit actividades_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @actividade.descripcion
    fill_in "Fecha", with: @actividade.fecha
    fill_in "Nombre", with: @actividade.nombre
    fill_in "Tipo actividad", with: @actividade.tipo_actividad
    click_on "Update Actividade"

    assert_text "Actividade was successfully updated"
    click_on "Back"
  end

  test "destroying a Actividade" do
    visit actividades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actividade was successfully destroyed"
  end
end
