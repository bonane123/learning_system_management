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
                        <li class="breadcrumb-item active" aria-current="page">Edit Lecture</li>
                    </ol>
                </nav>
            </div>
            <div class="ms-auto">
                <div class="btn-group">
                    <a href="{{ route('add.course.lecture', ['id' => $clecture->course_id]) }}"
                        class="btn btn-primary px-4">Back</a>
                </div>
            </div>
        </div>
        <!--end breadcrumb-->


        <div class="card">
            <div class="card-body p-4">
                <h5 class="mb-4">Edit Lecture</h5>
                <form class="row g-3" action="{{ route('update.course.lecture') }}" method="post" id="myForm"
                    enctype="multipart/form-data">
                    @csrf

                    <input type="hidden" name="id" value="{{ $clecture->id }}">
                    <div class="form-group col-md-6">
                        <label for="input1" class="form-label">Lecture Title</label>
                        <input type="text" class="form-control" id="category_name" name="lecture_title"
                            value="{{ $clecture->lecture_title }}">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input1" class="form-label">Video URL</label>
                        <input type="text" class="form-control" id="video_url" name="url"
                            value="{{ $clecture->url }}">
                    </div>
                    <div class="form-group col-md-12">
                        <label for="input1" class="form-label">Lecture Content</label>
                        <textarea name="content" class="form-control" cols="30" rows="10">{{ $clecture->content }}</textarea>
                    </div>


                    <div class="col-md-12">
                        <div class="d-md-flex d-grid align-items-center gap-3">
                            <button type="submit" class="btn btn-primary px-4">Save Changes</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
