<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Course;
use App\Models\Course_goal;
use App\Models\SubCategory;
use App\Models\User;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function CourseDetails($id, $slug)
    {
        $course = Course::find($id);
        $goals =  Course_goal::where('course_id', $id)->orderBy('id', 'DESC')->get();

        $instructorId = $course->instructor_id;
        $instructorCourses = Course::where('instructor_id', $instructorId)->orderBy('id', 'DESC')->get();
        $categories = Category::latest()->get();

        $catId = $course->category_id;
        $relatedCourses = Course::where('id', $catId)->where('id', '!=', $id)->orderBy('id', 'DESC')->get();

        return view('frontend.course.course_details', compact('course', 'goals', 'instructorCourses', 'categories', 'relatedCourses'));
    } // End Method

    public function CategoryCourse($category_id, $slug)
    {
        $courses = Course::where('category_id', $category_id)->where('status', 1)->get();
        $category = Category::where('id', $category_id)->first();
        $categories = Category::latest()->get();
        return view('frontend.category.category_all', compact('courses', 'category', 'categories'));
    } // End Method
    public function SubCategoryCourse($id, $slug)
    {
        $courses = Course::where('subcategory_id', $id)->where('status', 1)->get();
        $subcategory = SubCategory::where('id', $id)->first();
        $categories = Category::latest()->get();
        return view('frontend.category.subcategory_all', compact('courses', 'subcategory', 'categories'));
    } // End Method

    public function InstructorDetails($id)
    {

        $instructor = User::find($id);
        $courses = Course::where('instructor_id', $id)->get();

        return view('frontend.instructor.instructor_details', compact('courses', 'instructor'));
    } // End Method
}
