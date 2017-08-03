require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def test_to_see_if_random_name_is_assigned
    rocket = Rocket.new

    result = rocket.name

    assert(result, true)
  end

  def test_to_see_if_options_name_is_assigned
    rocket = Rocket.new(name: 'Eiji')

    result = rocket.name

    assert_equal(result, 'Eiji')
  end

  def test_to_see_if_ramdon_colour_is_assigned
    rocket = Rocket.new

    result = rocket.colour

    assert result
  end

  def test_to_see_if_options_colour_is_assigned
    rocket = Rocket.new(colour: 'Blue')

    result = rocket.colour

    assert_equal(result, 'Blue')
  end

  def test_to_see_if_no_arg_results_to_false
    rocket = Rocket.new

    result = rocket.flying?

    assert_equal(result, false)
  end

  def test_to_see_if_flying_true_results_to_true
    rocket = Rocket.new(flying: true)

    result = rocket.flying?

    assert_equal(result, true)
  end


  def test_to_see_if_lift_off_results_false_when_flying_is_true
    rocket = Rocket.new(flying: true)

    result = rocket.lift_off

    assert_equal(result, false)
  end


  def test_to_see_if_lift_off_results_flying_when_flying_is_false
    rocket = Rocket.new(flying: false)

    result = rocket.lift_off

    assert_equal(result, true)
  end

  def test_land_when_flying
    rocket = Rocket.new(flying: true)

    result = rocket.land

    assert_equal(result, true)
  end


    def test_land_when_not_flying
      rocket = Rocket.new(flying: false)

      result = rocket.land

      assert_equal(result, false)
    end


  def test_check_status_when_flying
    rocket = Rocket.new(flying: true, name: 'Eiji')

    result = rocket.status

    assert_equal(result, "Rocket Eiji is flying through the sky!")
  end

  def test_check_status_when_flying
    rocket = Rocket.new(flying: false, name: 'Eiji')

    result = rocket.status

    assert_equal(result, "Rocket Eiji is ready for lift off!")
  end


end
