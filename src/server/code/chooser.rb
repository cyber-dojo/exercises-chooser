# frozen_string_literal: true

class Chooser

  def initialize(externals)
    @externals = externals
  end

  def alive?
    true
  end

  def ready?
    exercises_start_points.ready?
  end

  def sha
    ENV['SHA']
  end

  def manifests
    exercises_start_points.manifests
  end

  private

  def exercises_start_points
    @externals.exercises_start_points
  end

end
