var gulp   = require('gulp'),
    util   = require('gulp-util'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglify'),
    coffee = require('gulp-coffee'),
    react  = require('gulp-react'),
    del    = require('del');

gulp.task('default', ['clean-up', 'compile-scripts', 'minify-scripts']);

gulp.task('clean-up', function() {
    util.log('Cleaning up...');

    // Clean up before producing a new build.
    del([
        'build/*.js',
        'public/all.min.js'
    ], function(error, paths) {
        //util.log(error);
        //util.log(paths.join(' '));
    });
});

gulp.task('compile-scripts', function() {
    util.log('Compiling Coffee files...');

    gulp.src('src/*.coffee')
        .pipe(coffee({bare: true}).on('error', util.log))
        .pipe(react()) // Compile JSX.
        .pipe(gulp.dest('build/'));
});

gulp.task('minify-scripts', function() {
    util.log('Minifying compiled files...');

    gulp.src('build/*.js')
        .pipe(uglify({mangle: false, compress: false}))
        .pipe(concat('all.min.js'))
        .pipe(gulp.dest('public/'));

    gulp.src('build/all.min.js')
        .pipe(gulp.dest('public/'));
});

gulp.task('copy-minified-components', function() {
    gulp.src('bower_components/react/react.min.js')
        .pipe(gulp.dest('public/'));

    gulp.src('bower_components/bootstrap/dist/css/bootstrap.min.css')
        .pipe(gulp.dest('public/'));
});

gulp.task('watch', function() {
    gulp.watch(['src/*.coffee'], ['default']);
});
