var gulp   = require('gulp'),
    util   = require('gulp-util'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglify'),
    coffee = require('gulp-coffee'),
    react  = require('gulp-react'),
    del    = require('del');

gulp.task('default', ['minify-scripts']);

gulp.task('watch', function() {
    gulp.watch(['src/*.coffee'], ['default']);
});

gulp.task('minify-scripts', ['compile-scripts'], function() {
    util.log('Minifying compiled files...');

    var stream = gulp.src('build/*.js')
        .pipe(uglify({mangle: false, compress: false})) // Allow mangling names for prod. env.
        .pipe(concat('all.min.js'))
        .pipe(gulp.dest('build/'))
        .pipe(gulp.dest('public/'));

    //gulp.src('build/all.min.js')
    //    .pipe(gulp.dest('public/'));

    return stream;
});

gulp.task('compile-scripts', ['clean-up'], function() {
    util.log('Compiling Coffee files...');

    var stream = gulp.src('src/*.coffee')
        .pipe(coffee({bare: true}).on('error', util.log))
        .pipe(react()) // Compile JSX.
        .pipe(gulp.dest('build/'));

    return stream;
});

gulp.task('clean-up', function(callback) {
    util.log('Cleaning up...');

    // Clean up before producing a new build.
    del(['build/*.js', 'public/all.min.js'], callback);
});

gulp.task('copy-minified-components', function() {
    gulp.src('bower_components/react/react.min.js')
        .pipe(gulp.dest('public/'));

    gulp.src('bower_components/bootstrap/dist/css/bootstrap.min.css')
        .pipe(gulp.dest('public/'));
});
