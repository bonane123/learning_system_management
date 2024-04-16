@extends('instructor.instructor_dashboard')
@section('instructor')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <div class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">

            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Add Course</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!--end breadcrumb-->


        <div class="card">
            <div class="card-body p-4">
                <h5 class="mb-4">Add Course</h5>


                <form class="row g-3" action="{{ route('store.course') }}" method="post" id="myForm"
                    enctype="multipart/form-data">
                    @csrf
                    <div class="form-group col-md-6">
                        <label for="input1" class="form-label">Course Name</label>
                        <input type="text" class="form-control" id="category_name" name="course_name">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input1" class="form-label">Course Title</label>
                        <input type="text" class="form-control" id="category_name" name="course_title">
                    </div>

                    <div class="col-md-6 form-group">
                        <label for="input2" class="form-label">Course Image</label>
                        <input class="form-control" type="file" id="image" name="course_image" />
                    </div>
                    <div class="col-md-6">
                        <img id="showImage" src="{{ url('upload/no_image.jpg') }}" alt="image"
                            class="rounded-circle p-1 bg-primary" width="80">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input1" class="form-label">Course Intro Video</label>
                        <input type="file" class="form-control" id="video" name="video"
                            accept="video/mp4, video/webm">
                    </div>
                    <div class="col-md-6"></div>

                    <div class="form-group col-md-6">
                        <label for="input1" class="form-label">Course Category</label>
                        <select name="category_id" class="form-select mb-3" aria-label="Default select example">
                            <option selected="" disabled>Select Category</option>
                            @foreach ($categories as $category)
                                <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                            @endforeach

                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input1" class="form-label">Course SubCategory</label>
                        <select name="subcategory_id" class="form-select mb-3" aria-label="Default select example">
                            <option></option>


                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input1" class="form-label">Certificate Available</label>
                        <select name="certificate" class="form-select mb-3" aria-label="Default select example">
                            <option selected="" disabled>Select Option</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>


                        </select>
                    </div>

                    <div class="form-group col-md-6">
                        <label for="input1" class="form-label">Levels</label>
                        <select name="label" class="form-select mb-3" aria-label="Default select example">
                            <option selected="" disabled>Select Option</option>
                            <option value="Beginner">Beginner</option>
                            <option value="Intermediate">Intermediate</option>
                            <option value="Advanced">Advanced</option>


                        </select>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input1" class="form-label">Course Price</label>
                        <input type="text" class="form-control" id="price" name="selling_price">
                    </div>

                    <div class="form-group col-md-3">
                        <label for="input1" class="form-label">Course Discount Price</label>
                        <input type="text" class="form-control" id="discount_price" name="discount_price">
                    </div>

                    <div class="form-group col-md-3">
                        <label for="input1" class="form-label">Duration</label>
                        <input type="text" class="form-control" id="duration" name="duration">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input1" class="form-label">Resources</label>
                        <input type="text" class="form-control" id="resources" name="resources">
                    </div>


                    <div class="form-group col-md-12">
                        <label for="input1" class="form-label">Course Prerequisites</label>
                        <textarea name="prerequisites" class="form-control" id="mytextarea" rows="3"></textarea>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="input1" class="form-label">Course Description</label>
                        <textarea name="description" class="form-control" id="mytextarea" rows="3"></textarea>
                    </div>

                    <p>Course Goals</p>
                    <!--   //////////// Goal Option /////////////// -->

                    <div class="row add_item">

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="goals" class="form-label"> Goals </label>
                                <input type="text" name="course_goals[]" id="goals" class="form-control"
                                    placeholder="Goals ">
                            </div>
                        </div>
                        <div class="form-group col-md-6" style="padding-top: 30px;">
                            <a class="btn btn-primary addeventmore"><i class="fa fa-plus-circle"></i> Add More..</a>
                        </div>
                    </div> <!---end row-->

                    <!--   //////////// End Goal Option /////////////// -->

                    <hr>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="bestseller" value="1"
                                    id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">BestSeller</label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="featured" value="1"
                                    id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">Featured</label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="highestrated" value="1"
                                    id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">Highest Rated</label>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="d-md-flex d-grid align-items-center gap-3">
                            <button type="submit" class="btn btn-primary px-4">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!--========== Start of add multiple class with ajax ==============-->
    <div style="visibility: hidden">
        <div class="whole_extra_item_add" id="whole_extra_item_add">
            <div class="whole_extra_item_delete" id="whole_extra_item_delete">
                <div class="container mt-2">
                    <div class="row">


                        <div class="form-group col-md-6">
                            <label for="goals">Goals</label>
                            <input type="text" name="course_goals[]" id="goals" class="form-control"
                                placeholder="Goals  ">
                        </div>
                        <div class="form-group col-md-6" style="padding-top: 20px">
                            <span class="btn btn-primary btn-sm addeventmore"><i class="fa fa-plus-circle">Add</i></span>
                            <span class="btn btn-danger btn-sm removeeventmore"><i
                                    class="fa fa-minus-circle">Remove</i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!----For Section-------->
    <script type="text/javascript">
        $(document).ready(function() {
            var counter = 0;
            $(document).on("click", ".addeventmore", function() {
                var whole_extra_item_add = $("#whole_extra_item_add").html();
                $(this).closest(".add_item").append(whole_extra_item_add);
                counter++;
            });
            $(document).on("click", ".removeeventmore", function(event) {
                $(this).closest("#whole_extra_item_delete").remove();
                counter -= 1
            });
        });
    </script>
    <!--========== End of add multiple class with ajax ==============-->

    <script type="text/javascript">
        $(document).ready(function() {
            $('#myForm').validate({
                rules: {
                    course_name: {
                        required: true,
                    },
                    course_image: {
                        required: true,
                    },
                    course_title: {
                        required: true,
                    },

                },
                messages: {
                    course_name: {
                        required: 'Please Enter Course Name',
                    },
                    course_image: {
                        required: 'Please upload Course Image',
                    },
                    course_title: {
                        required: 'Please Enter Course Title',
                    },


                },
                errorElement: 'span',
                errorPlacement: function(error, element) {
                    error.addClass('invalid-feedback');
                    element.closest('.form-group').append(error);
                },
                highlight: function(element, errorClass, validClass) {
                    $(element).addClass('is-invalid');
                },
                unhighlight: function(element, errorClass, validClass) {
                    $(element).removeClass('is-invalid');
                },
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#image').change(function(e) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#showImage').attr('src', e.target.result);
                }
                reader.readAsDataURL(e.target.files['0']);
            })
        })
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('select[name="category_id"]').on('change', function() {
                var category_id = $(this).val();
                if (category_id) {
                    $.ajax({
                        url: "{{ url('/subcategory/ajax') }}/" + category_id,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            $('select[name="subcategory_id"]').html('');
                            var d = $('select[name="subcategory_id"]').empty();
                            $.each(data, function(key, value) {
                                $('select[name="subcategory_id"]').append(
                                    '<option value="' + value.id + '">' + value
                                    .subcategory_name + '</option>');
                            });
                        },

                    });
                } else {
                    alert('danger');
                }
            });
        });
    </script>
@endsection
