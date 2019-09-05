require "application_system_test_case"

class FacultyCoursesTest < ApplicationSystemTestCase
  setup do
    @faculty_course = faculty_courses(:one)
  end

  test "visiting the index" do
    visit faculty_courses_url
    assert_selector "h1", text: "Faculty Courses"
  end

  test "creating a Faculty course" do
    visit faculty_courses_url
    click_on "New Faculty Course"

    fill_in "Course", with: @faculty_course.course
    fill_in "Course", with: @faculty_course.course_id
    fill_in "Faculty", with: @faculty_course.faculty_id
    click_on "Create Faculty course"

    assert_text "Faculty course was successfully created"
    click_on "Back"
  end

  test "updating a Faculty course" do
    visit faculty_courses_url
    click_on "Edit", match: :first

    fill_in "Course", with: @faculty_course.course
    fill_in "Course", with: @faculty_course.course_id
    fill_in "Faculty", with: @faculty_course.faculty_id
    click_on "Update Faculty course"

    assert_text "Faculty course was successfully updated"
    click_on "Back"
  end

  test "destroying a Faculty course" do
    visit faculty_courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faculty course was successfully destroyed"
  end
end
