require 'test_helper'

class FacultyCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faculty_course = faculty_courses(:one)
  end

  test "should get index" do
    get faculty_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_faculty_course_url
    assert_response :success
  end

  test "should create faculty_course" do
    assert_difference('FacultyCourse.count') do
      post faculty_courses_url, params: { faculty_course: { course: @faculty_course.course, course_id: @faculty_course.course_id, faculty_id: @faculty_course.faculty_id } }
    end

    assert_redirected_to faculty_course_url(FacultyCourse.last)
  end

  test "should show faculty_course" do
    get faculty_course_url(@faculty_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_faculty_course_url(@faculty_course)
    assert_response :success
  end

  test "should update faculty_course" do
    patch faculty_course_url(@faculty_course), params: { faculty_course: { course: @faculty_course.course, course_id: @faculty_course.course_id, faculty_id: @faculty_course.faculty_id } }
    assert_redirected_to faculty_course_url(@faculty_course)
  end

  test "should destroy faculty_course" do
    assert_difference('FacultyCourse.count', -1) do
      delete faculty_course_url(@faculty_course)
    end

    assert_redirected_to faculty_courses_url
  end
end
