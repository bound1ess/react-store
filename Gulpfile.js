var gulp   = require('gulp'),
    util   = require('gulp-util'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglify'),
    coffee = require('gulp-coffee'),
    react  = require('gulp-react');

gulp.task('default', ['compile-scripts', 'minify-scripts']);

gulp.task('compile-scripts', function() {
    util.log('Compiling Coffee files...');

    gulp.src('src/*.coffee')
        .pipe(coffee({bare: true}).on('error', util.log))
        .pipe(react())
        .pipe(gulp.dest('dist/'));
});

gulp.task('minify-scripts', function() {
    util.log('Minifying compiled files...');

    gulp.src('dist/*.js')
        .pipe(uglify({mangle: false, compress: false}))
        .pipe(concat('all.min.js'))
        .pipe(gulp.dest('dist/'));
});

gulp.task('copy-minified-components', function() {
    gulp.src('bower_components/react/react.min.js')
        .pipe(gulp.dest('dist/'));

    gulp.src('bower_components/bootstrap/dist/css/bootstrap.min.css')
        .pipe(gulp.dest('dist/'));
});
