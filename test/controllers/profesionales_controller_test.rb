require 'test_helper'

class ProfesionalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profesionale = profesionales(:one)
  end

  test "should get index" do
    get profesionales_url
    assert_response :success
  end

  test "should get new" do
    get new_profesionale_url
    assert_response :success
  end

  test "should create profesionale" do
    assert_difference('Profesionale.count') do
      post profesionales_url, params: { profesionale: { apellido_materno: @profesionale.apellido_materno, apellido_paterno: @profesionale.apellido_paterno, descripcion: @profesionale.descripcion, nombre: @profesionale.nombre, profesion: @profesionale.profesion, rut: @profesionale.rut, segundo_nombre: @profesionale.segundo_nombre } }
    end

    assert_redirected_to profesionale_url(Profesionale.last)
  end

  test "should show profesionale" do
    get profesionale_url(@profesionale)
    assert_response :success
  end

  test "should get edit" do
    get edit_profesionale_url(@profesionale)
    assert_response :success
  end

  test "should update profesionale" do
    patch profesionale_url(@profesionale), params: { profesionale: { apellido_materno: @profesionale.apellido_materno, apellido_paterno: @profesionale.apellido_paterno, descripcion: @profesionale.descripcion, nombre: @profesionale.nombre, profesion: @profesionale.profesion, rut: @profesionale.rut, segundo_nombre: @profesionale.segundo_nombre } }
    assert_redirected_to profesionale_url(@profesionale)
  end

  test "should destroy profesionale" do
    assert_difference('Profesionale.count', -1) do
      delete profesionale_url(@profesionale)
    end

    assert_redirected_to profesionales_url
  end
end
