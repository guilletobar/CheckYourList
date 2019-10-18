require 'test_helper'

class ActividadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actividade = actividades(:one)
  end

  test "should get index" do
    get actividades_url
    assert_response :success
  end

  test "should get new" do
    get new_actividade_url
    assert_response :success
  end

  test "should create actividade" do
    assert_difference('Actividade.count') do
      post actividades_url, params: { actividade: { descripcion: @actividade.descripcion, fecha: @actividade.fecha, nombre: @actividade.nombre, tipo_actividad: @actividade.tipo_actividad } }
    end

    assert_redirected_to actividade_url(Actividade.last)
  end

  test "should show actividade" do
    get actividade_url(@actividade)
    assert_response :success
  end

  test "should get edit" do
    get edit_actividade_url(@actividade)
    assert_response :success
  end

  test "should update actividade" do
    patch actividade_url(@actividade), params: { actividade: { descripcion: @actividade.descripcion, fecha: @actividade.fecha, nombre: @actividade.nombre, tipo_actividad: @actividade.tipo_actividad } }
    assert_redirected_to actividade_url(@actividade)
  end

  test "should destroy actividade" do
    assert_difference('Actividade.count', -1) do
      delete actividade_url(@actividade)
    end

    assert_redirected_to actividades_url
  end
end
