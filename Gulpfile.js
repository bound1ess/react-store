var gulp   = require('gulp'),
    util   = require('gulp-util'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglify'),
    coffee = require('gulp-coffee'),
    react  = require('gulp-react'),
    logger = require('gulp-filelog'),
    del    = require('del');

gulp.task('default', ['minify-scripts']);

gulp.task('watch', function() {
    util.log('Setting up a file watcher...');
    gulp.watch(['src/**/*.coffee'], ['default']);
});

gulp.task('minify-scripts', ['compile-scripts'], function() {
    util.log('Minifying compiled files using UglifyJS...');

    var stream = gulp.src(['build/*/*.js', 'build/*.js'])
        .pipe(uglify({mangle: false, compress: false}))
        .pipe(logger()) // Not necessary.
        .pipe(concat('all.min.js'))
        .pipe(gulp.dest('build/'))
        .pipe(gulp.dest('public/'));

    return stream;
});

gulp.task('compile-scripts', ['clean-up'], function() {
    util.log('Compiling Coffee files...');

    var stream = gulp.src('src/components/*.coffee')
        .pipe(coffee({bare: true}).on('error', util.log))
        .pipe(react()) // Compile JSX.
        .pipe(gulp.dest('build/components/'));

    // It's a trap!
    gulp.src('src/*.coffee')
        .pipe(coffee({bare: true}).on('error', util.log))
        .pipe(react())
        .pipe(gulp.dest('build/'));

    return stream;
});

gulp.task('clean-up', function(callback) {
    util.log('Cleaning up the previous build...');

    // Clean up before producing a new build.
    del(['build/**/*.js', 'public/all.min.js'], callback);
});

gulp.task('copy-minified-components', function() {
    //gulp.src('bower_components/react/react.min.js')
    //    .pipe(gulp.dest('public/'));

    gulp.src('bower_components/react/react.js')
        .pipe(gulp.dest('public/'));

    gulp.src('bower_components/bootstrap/dist/css/bootstrap.min.css')
        .pipe(gulp.dest('public/'));
});
