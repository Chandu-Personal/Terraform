





<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
  <link rel="dns-prefetch" href="https://assets-cdn.github.com">
  <link rel="dns-prefetch" href="https://avatars0.githubusercontent.com">
  <link rel="dns-prefetch" href="https://avatars1.githubusercontent.com">
  <link rel="dns-prefetch" href="https://avatars2.githubusercontent.com">
  <link rel="dns-prefetch" href="https://avatars3.githubusercontent.com">
  <link rel="dns-prefetch" href="https://github-cloud.s3.amazonaws.com">
  <link rel="dns-prefetch" href="https://user-images.githubusercontent.com/">



  <link crossorigin="anonymous" media="all" integrity="sha512-Z0JAar9+DkI1NjGVdZr3GivARUgJtA0o2eHlTv7Ou2gshR5awWVf8QGsq11Ns9ZxQLEs+G5/SuARmvpOLMzulw==" rel="stylesheet" href="https://assets-cdn.github.com/assets/frameworks-95aff0b550d3fe338b645a4deebdcb1b.css" />
  <link crossorigin="anonymous" media="all" integrity="sha512-cPNe2ujxkLVIsIfpqsGH3fmUuiNQ3wfPV8niT1uB9ziMQTNwKSHIyIBZk4ZAkIYydrF798X7+JQlreQlMNkYXg==" rel="stylesheet" href="https://assets-cdn.github.com/assets/github-9fe41072c7eb61e44d5923e65f8af9fa.css" />
  
  
  <link crossorigin="anonymous" media="all" integrity="sha512-2ThuYzT4A4rqWiPrSjHGQiV5pWat6IhKBOQbt3SI++BucjSUbJlzSD2S9h0pM5UHlP1KpvSk9YtKp0JinP+yVQ==" rel="stylesheet" href="https://assets-cdn.github.com/assets/site-2dc8680244624c331677d1cfd1af7370.css" />
  

  <meta name="viewport" content="width=device-width">
  
  <title>terraform-aws-ec2-instance/README.md at master · terraform-aws-modules/terraform-aws-ec2-instance · GitHub</title>
    <meta name="description" content="Terraform module which creates EC2 instance(s) on AWS - terraform-aws-modules/terraform-aws-ec2-instance">
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
  <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
  <meta property="fb:app_id" content="1401488693436528">

    
    <meta property="og:image" content="https://avatars2.githubusercontent.com/u/31414033?s=400&amp;v=4" /><meta property="og:site_name" content="GitHub" /><meta property="og:type" content="object" /><meta property="og:title" content="terraform-aws-modules/terraform-aws-ec2-instance" /><meta property="og:url" content="https://github.com/terraform-aws-modules/terraform-aws-ec2-instance" /><meta property="og:description" content="Terraform module which creates EC2 instance(s) on AWS - terraform-aws-modules/terraform-aws-ec2-instance" />

  <link rel="assets" href="https://assets-cdn.github.com/">
  
  <meta name="pjax-timeout" content="1000">
  
  <meta name="request-id" content="DCBE:4339:D4FCE8:18EE734:5B96710F" data-pjax-transient>


  

  <meta name="selected-link" value="repo_source" data-pjax-transient>

      <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
    <meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
    <meta name="google-site-verification" content="GXs5KoUUkNCoaAZn7wPN-t01Pywp9M3sEjnt_3_ZWPc">

  <meta name="octolytics-host" content="collector.githubapp.com" /><meta name="octolytics-app-id" content="github" /><meta name="octolytics-event-url" content="https://collector.githubapp.com/github-external/browser_event" /><meta name="octolytics-dimension-request_id" content="DCBE:4339:D4FCE8:18EE734:5B96710F" /><meta name="octolytics-dimension-region_edge" content="iad" /><meta name="octolytics-dimension-region_render" content="iad" />
<meta name="analytics-location" content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" />



    <meta name="google-analytics" content="UA-3769691-2">


<meta class="js-ga-set" name="dimension1" content="Logged Out">



  

      <meta name="hostname" content="github.com">
    <meta name="user-login" content="">

      <meta name="expected-hostname" content="github.com">
    <meta name="js-proxy-site-detection-payload" content="OGZiOTQ3NTUzNzA0Zjc2NzA3MzA5ZmYzYTY4MGFlNjhiNGE4MjI1ZjY5ZGMzODg4ODYxZDQ3NWEyOTE0OWM4Nnx7InJlbW90ZV9hZGRyZXNzIjoiNTQuMTczLjIyNy41NCIsInJlcXVlc3RfaWQiOiJEQ0JFOjQzMzk6RDRGQ0U4OjE4RUU3MzQ6NUI5NjcxMEYiLCJ0aW1lc3RhbXAiOjE1MzY1ODU5OTksImhvc3QiOiJnaXRodWIuY29tIn0=">

    <meta name="enabled-features" content="DASHBOARD_V2_LAYOUT_OPT_IN,EXPLORE_DISCOVER_REPOSITORIES,UNIVERSE_BANNER,FREE_TRIALS,MARKETPLACE_INSIGHTS,MARKETPLACE_PLAN_RESTRICTION_EDITOR,MARKETPLACE_SEARCH,MARKETPLACE_INSIGHTS_CONVERSION_PERCENTAGES">

  <meta name="html-safe-nonce" content="e3479a41b281e69ca963946b7b488880312e7ee2">

  <meta http-equiv="x-pjax-version" content="9584d9f1bcccea1dcfa00fc40a5e5229">
  

      <link href="https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/commits/master.atom" rel="alternate" title="Recent Commits to terraform-aws-ec2-instance:master" type="application/atom+xml">

  <meta name="go-import" content="github.com/terraform-aws-modules/terraform-aws-ec2-instance git https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git">

  <meta name="octolytics-dimension-user_id" content="31414033" /><meta name="octolytics-dimension-user_login" content="terraform-aws-modules" /><meta name="octolytics-dimension-repository_id" content="103173578" /><meta name="octolytics-dimension-repository_nwo" content="terraform-aws-modules/terraform-aws-ec2-instance" /><meta name="octolytics-dimension-repository_public" content="true" /><meta name="octolytics-dimension-repository_is_fork" content="false" /><meta name="octolytics-dimension-repository_network_root_id" content="103173578" /><meta name="octolytics-dimension-repository_network_root_nwo" content="terraform-aws-modules/terraform-aws-ec2-instance" /><meta name="octolytics-dimension-repository_explore_github_marketplace_ci_cta_shown" content="false" />


    <link rel="canonical" href="https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/blob/master/README.md" data-pjax-transient>


  <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">

  <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">

  <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#000000">
  <link rel="icon" type="image/x-icon" class="js-site-favicon" href="https://assets-cdn.github.com/favicon.ico">

<meta name="theme-color" content="#1e2327">



  <link rel="manifest" href="/manifest.json" crossOrigin="use-credentials">

  </head>

  <body class="logged-out env-production page-blob">
    

  <div class="position-relative js-header-wrapper ">
    <a href="#start-of-content" tabindex="1" class="px-2 py-4 bg-blue text-white show-on-focus js-skip-to-content">Skip to content</a>
    <div id="js-pjax-loader-bar" class="pjax-loader-bar"><div class="progress"></div></div>

    
    
    



        

  <header class="Header header-logged-out  position-relative f4 py-3" role="banner" data-ga-load="(Logged out) Header, view, experiment:site_header_dropdowns; group:dropdowns">
    <div class="container-lg d-flex px-3">
      <div class="d-flex flex-justify-between flex-items-center">
          <a class="mr-5" href="https://github.com/" aria-label="Homepage" data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark; experiment:site_header_dropdowns; group:dropdowns">
            <svg height="32" class="octicon octicon-mark-github text-white" viewBox="0 0 16 16" version="1.1" width="32" aria-hidden="true"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
          </a>
      </div>

      <div class="HeaderMenu HeaderMenu--experiment d-flex flex-justify-between flex-items-center flex-auto">
        <div class="d-none">
          <button class="btn-link js-details-target" type="button" aria-label="Toggle navigation" aria-expanded="false">
            <svg height="24" class="octicon octicon-x text-gray" viewBox="0 0 12 16" version="1.1" width="18" aria-hidden="true"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48L7.48 8z"/></svg>
          </button>
        </div>

          <nav class="">
            <ul class="d-flex list-style-none">
                <li class="HeaderMenu-item dropdown mr-5">
                  <details class="details-expanded details-reset js-dropdown-details ">
                    <summary class="HeaderMenu-target text-white">
                      <div class="d-flex flex-items-baseline flex-justify-between">
                        <span class="d-inline-block mr-1">Features</span>
                        <span class="dropdown-caret"></span>
                      </div>
                    </summary>
                    <div class="dropdown-menu dropdown-menu-s p-4 ml-n4 mt-3 mt-lg-2">
                      <a href="/features" class="d-block d-lg-flex flex-items-center flex-justify-between f5 link-gray-dark text-bold mb-2" data-ga-click="(Logged out) Header, go to Features, experiment:site_header_dropdowns; group:dropdowns"><span>Features overview</span> <svg height="16" class="octicon octicon-chevron-right text-gray-dark" viewBox="0 0 8 16" version="1.1" width="8" aria-hidden="true"><path fill-rule="evenodd" d="M7.5 8l-5 5L1 11.5 4.75 8 1 4.5 2.5 3l5 5z"/></svg></a>
                      <hr class="border border-dashed my-3 d-none d-lg-block">
                      <ul class="list-style-none f5">
                        <li class="mb-2"><a href="/features/code-review/" class="d-block link-gray" data-ga-click="(Logged out) Header, go to Code review, experiment:site_header_dropdowns; group:dropdowns">Code review</a></li>
                        <li class="mb-2"><a href="/features/project-management/" class="d-block link-gray" data-ga-click="(Logged out) Header, go to Project management, experiment:site_header_dropdowns; group:dropdowns">Project management</a></li>
                        <li class="mb-2"><a href="/features/integrations" class="d-block link-gray" data-ga-click="(Logged out) Header, go to Integrations, experiment:site_header_dropdowns; group:dropdowns">Integrations</a></li>
                        <li class="mb-2"><a href="/features#team-management" class="d-block link-gray" data-ga-click="(Logged out) Header, go to Team management, experiment:site_header_dropdowns; group:dropdowns">Team management</a></li>
                        <li class="mb-2"><a href="/features#social-coding" class="d-block link-gray" data-ga-click="(Logged out) Header, go to Social coding, experiment:site_header_dropdowns; group:dropdowns">Social coding</a></li>
                        <li class="mb-2"><a href="/features#documentation" class="d-block link-gray" data-ga-click="(Logged out) Header, go to Documentation, experiment:site_header_dropdowns; group:dropdowns">Documentation</a></li>
                        <li class="mb-2"><a href="/features#code-hosting" class="d-block link-gray" data-ga-click="(Logged out) Header, go to Code hosting, experiment:site_header_dropdowns; group:dropdowns">Code hosting</a></li>
                      </ul>
                    </div>
                  </details>
                </li>
                <li class="HeaderMenu-item dropdown platform-nav mr-5">
                  <details class="details-expanded details-reset js-dropdown-details ">
                    <summary class="HeaderMenu-target text-white">
                      <div class="d-flex flex-items-baseline flex-justify-between">
                        <span class="d-inline-block mr-1">Platform</span>
                        <span class="dropdown-caret"></span>
                      </div>
                    </summary>
                    <div class="dropdown-menu dropdown-menu-s p-4 ml-n4 mt-3 mt-lg-2">
                      <div class="d-flex gutter-spacious ">
                        <div class="position-relative col-8">
                          <dl class="my-0">
                            <a href="/marketplace" class="d-flex mb-3 link-gray-dark no-underline" data-ga-click="(Logged out) Header, go to Marketplace, experiment:site_header_dropdowns; group:dropdowns">
                              <div class="mr-3">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 70.92 56.98" class="d-block" width="34"><title>Asset 1</title><g data-name="Layer 2"><path d="M6.18 57H1a1 1 0 0 1 0-2h5.18a1 1 0 0 1 0 2zM69.92 57h-5.18a1 1 0 1 1 0-2h5.18a1 1 0 0 1 0 2z" fill="#2088ff"></path><path d="M29.67 56.47a1 1 0 0 1-1-1V34.84H16v20.23a1 1 0 0 1-2 0V33.84a1 1 0 0 1 1-1h14.67a1 1 0 0 1 1 1v21.63a1 1 0 0 1-1 1z" fill="#79b8ff"></path><path d="M64.74 57H6.18a1 1 0 0 1-1-1v-8.65a1 1 0 0 1 2 0V55h56.56V33.84a1 1 0 0 1 2 0V56a1 1 0 0 1-1 1zM6.18 41.24a1 1 0 0 1-1-1V1a1 1 0 0 1 1-1h58.58a1 1 0 0 1 1 1v10.52a1 1 0 1 1-2 0V2H7.18v38.24a1 1 0 0 1-1 1z" fill="#2088ff"></path><path d="M56.82 45.94H36.34a1 1 0 0 1-1-1v-11.1a1 1 0 0 1 1-1h20.48a1 1 0 0 1 1 1v11.1a1 1 0 0 1-1 1zm-19.48-2h18.48v-9.1H37.34z" fill="#79b8ff"></path><path d="M31.55 27.5a7.84 7.84 0 0 1-5.21-2.42c-1.06-1-11.87-9.74-12-9.83a1 1 0 0 1 .66-1.78h43.66a1 1 0 0 1 .64.24l11.26 9.48a1 1 0 0 1-1.29 1.53l-11-9.25H17.81c3.26 2.65 9.08 7.4 9.88 8.12a6 6 0 0 0 3.87 1.9 3.3 3.3 0 0 0 3-1.95 1 1 0 1 1 1.82.82 5.3 5.3 0 0 1-4.83 3.14z" fill="#2088ff"></path><path d="M40.24 27.5a5.26 5.26 0 0 1-1.86-.34 1 1 0 0 1 .71-1.87 3.26 3.26 0 0 0 1.16.21 3.3 3.3 0 0 0 3-1.95 1 1 0 1 1 1.82.82 5.3 5.3 0 0 1-4.83 3.13zM48.82 27.5a5.26 5.26 0 0 1-1.82-.34 1 1 0 0 1 .71-1.87 3.26 3.26 0 0 0 1.16.21 3.3 3.3 0 0 0 3-1.95 1 1 0 1 1 1.82.82 5.3 5.3 0 0 1-4.87 3.13zM57.41 27.5a5.26 5.26 0 0 1-1.86-.34 1 1 0 0 1 .71-1.87 3.26 3.26 0 0 0 1.16.21 3.3 3.3 0 0 0 3-1.95 1 1 0 1 1 1.82.82 5.3 5.3 0 0 1-4.83 3.13zM66 27.5a5.26 5.26 0 0 1-1.86-.34 1 1 0 0 1 .71-1.87 3.26 3.26 0 0 0 1.15.21 3.3 3.3 0 0 0 3-2 1 1 0 0 1 1.82.82A5.31 5.31 0 0 1 66 27.5zM15 27.22a1 1 0 0 1-1-1V14.71a1 1 0 0 1 2 0v11.51a1 1 0 0 1-1 1z" fill="#2088ff"></path><path d="M44.16 25a1 1 0 0 1-.65-.24L38.07 20a1 1 0 0 1 1.3-1.52l5.43 4.67a1 1 0 0 1-.64 1.85zM35.52 25a1 1 0 0 1-.65-.24L29.44 20a1 1 0 0 1 1.3-1.52l5.43 4.67a1 1 0 0 1-.65 1.85zM52.74 25a1 1 0 0 1-.65-.24L46.66 20A1 1 0 0 1 48 18.53l5.43 4.67a1 1 0 0 1-.69 1.8zM61.33 25a1 1 0 0 1-.65-.24L55.25 20a1 1 0 0 1 1.3-1.52L62 23.2a1 1 0 0 1-.67 1.8zM22.23 8.42H6.51a1 1 0 0 1 0-2h15.72a1 1 0 0 1 0 2zM64.76 8.42H58.4a1 1 0 0 1 0-2h6.36a1 1 0 0 1 0 2z" fill="#2088ff"></path><path d="M46.58 45.72a1 1 0 0 1-1-1V34.1a1 1 0 0 1 2 0v10.62a1 1 0 0 1-1 1z" fill="#79b8ff"></path></g></svg>

                              </div>
                              <div>
                                <dt class="f4">Marketplace</dt>
                                <dd class="f6 text-gray">Find developer tools that work with GitHub</dd>
                              </div>
                            </a>
                            <a href="https://developer.github.com" class="d-flex mb-3 link-gray-dark no-underline" data-ga-click="(Logged out) Header, go to Developers, experiment:site_header_dropdowns; group:dropdowns">
                              <div class="mr-3">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 61.23 60.12" class="d-block" width="34"><title>Asset 1</title><g data-name="Layer 2"><path fill="none" stroke="#79b8ff" stroke-linecap="round" stroke-miterlimit="10" stroke-width="2" d="M14.75 13.22H3.52M18.02 6.33H6.54"></path><path fill="none" stroke="#2088ff" stroke-linecap="round" stroke-miterlimit="10" stroke-width="2" d="M56.96 51.89H45.73M60.23 44.99H48.75"></path><circle cx="22.5" cy="37.62" r="7.48" transform="rotate(-45 22.502 37.62)" fill="none" stroke="#2088ff" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></circle><path d="M36.72 29.79l1.35 3.4 5.93 2V40l-5.92 2.08-1.44 3.39 2.83 5.58L36 54.54l-5.66-2.7L27 53.22l-2 5.9h-4.89L18 53.18l-3.36-1.4L9 54.58 5.58 51.1l2.7-5.66-1.38-3.37-5.9-2v-4.89l5.92-2.08 1.44-3.39-2.82-5.57L9 20.69l5.66 2.7L18 22l2-5.9h4.89L27 22l3.36 1.4L36 20.66l3.45 3.48z" fill="none" stroke="#2088ff" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></path><path d="M7.22 22.48L9 20.69l5.66 2.7L18 22l2-5.9h4.89L27 22l3.36 1.4L36 20.66l3.45 3.48-2.7 5.66 1.35 3.4 5.93 2L44 40l-5.92 2.08-1.44 3.39 2.83 5.58-1.83 1.82" fill="none" stroke="#2088ff" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" opacity=".1"></path><path d="M37.22 14.11a6.05 6.05 0 1 1 8.56 8.56M30.07 12l-2.29-4.51 2.81-2.79 4.58 2.19 2.72-1.12L39.5 1h4l1.64 4.8 2.71 1.14 4.54-2.26 2.79 2.81L53 12.06l1.09 2.75 4.8 1.58v4L54.09 22l-1.16 2.74 2.29 4.51-2.82 2.83-4.58-2.19" fill="none" stroke="#79b8ff" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></path><path d="M29.14 6.14l1.45-1.44 4.58 2.19 2.72-1.12L39.5 1h4l1.64 4.8 2.71 1.14 4.54-2.26 2.79 2.81L53 12.06l1.09 2.75 4.8 1.58v4L54.09 22l-1.16 2.74 2.29 4.51-1.48 1.47" fill="none" stroke="#79b8ff" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" opacity=".1"></path></g></svg>

                              </div>
                              <div>
                                <dt class="f4">GitHub API</dt>
                                <dd class="f6 text-gray">Start building on the GitHub platform</dd>
                              </div>
                            </a>
                            <a href="https://partner.github.com/?source=github-header-loggedout&experiment=site_header_dropdowns&group=dropdowns" class="d-flex mb-3 link-gray-dark no-underline" data-ga-click="(Logged out) Header, go to Partner program, experiment:site_header_dropdowns; group:dropdowns">
                              <div class="mr-3">
                                <!-- Generator: Adobe Illustrator 22.1.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  --><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 37 23" style="enable-background:new 0 0 37 23;" xml:space="preserve" class="d-block" width="34">
<style type="text/css">
	.st0{fill:none;stroke:#79B8FF;stroke-linecap:round;stroke-linejoin:round;}
	.st1{fill:none;stroke:#2088FF;stroke-linecap:round;stroke-linejoin:round;}
</style>
<path class="st0" d="M6,1l4.5,1.4L5.3,15.2L1,12.9L6,1z"></path>
<path class="st1" d="M30.9,1.2L36,12.8l-3.9,2.6l-5.2-13L30.9,1.2z"></path>
<path class="st1" d="M5.2,11.7c0-0.6-0.5-1-1-1c-0.6,0-1,0.5-1,1c0,0.6,0.5,1,1,1"></path>
<path class="st0" d="M29.7,4.6c0.4,0,0.8-0.3,0.8-0.8v0c0-0.4-0.3-0.8-0.8-0.8h0c-0.4,0-0.8,0.3-0.8,0.8v0C29,4.3,29.3,4.6,29.7,4.6  L29.7,4.6z"></path>
<path class="st0" d="M6.2,13.4c0,0,2.4,0.8,3.9,2.3L6.2,13.4z M9.6,4.8c0,0,4.3,2.3,6.9,2.8L9.6,4.8z"></path>
<path class="st1" d="M30.4,11.5l-3.2,2.6"></path>
<path class="st0" d="M19.7,9l8.7,6.2c0.4,0.3,1.1,1.2,0.4,2.2c-0.7,0.9-1.5,0.2-1.5,0.2l-6-4.2"></path>
<path class="st1" d="M27.5,4.8c0,0-2,1.6-3.3,1.4c-1.3-0.2-4.7-0.9-4.7-0.9c-0.7,0.8-3.7,3.5-4.6,3.6c0,0-0.2,1.5,1.6,1.3  c1.7-0.2,2.7-0.9,3.7-1.7"></path>
<path class="st0" d="M24.6,18.9c0,0,0.2,0.9-0.2,1.4c-0.2,0.3-0.7,0.6-1.3,0.3l-3.7-2.5L24.6,18.9z M27.1,17.6c0,0,0.1,0.9-0.5,1.4  c-0.3,0.3-0.8,0.6-1.5,0.3l-5.9-4.3L27.1,17.6z"></path>
<path class="st0" d="M22.4,20.1c0,0,0,0.6-0.2,1.1c-0.2,0.3-0.4,0.6-1.1,0.4l-2.8-1.9"></path>
<path class="st1" d="M17.8,17c0.3-0.3,1.6-0.2,1.4,1c-0.3,1.2-1.7,2.4-2.1,2.6c-0.4,0.2-1.4,0.2-1.4-0.7L17.8,17z M14.3,14.6  c0,0-0.7-1.5-1.5-1.2c-0.8,0.3-2.8,2-2.8,2.7c0,0.7,1,1.5,1.9,0.8L14.3,14.6z"></path>
<path class="st1" d="M16.1,15.8c0.2-0.3,1.8-0.4,1.5,1.1c-0.3,1.4-2.1,2.7-2.4,2.9c-0.3,0.1-1.7,0.3-1.9-0.9"></path>
<path class="st1" d="M15.9,16.1c0,0,0.5-0.9-0.1-1.5c-0.6-0.6-1.2-0.2-1.6,0.2c-0.3,0.3-2.9,2.8-2.9,2.8s0.5,1.8,1.7,1.3  C14.2,18.5,15.9,16.1,15.9,16.1z"></path>
</svg>

                              </div>
                              <div>
                                <dt class="f4">Partner program</dt>
                                <dd class="f6 text-gray">Help millions of developers do their best work</dd>
                              </div>
                            </a>
                          </dl>
                          <div class="d-none d-lg-block border-left position-absolute top-0 right-0 bottom-0"></div>
                        </div>
                        <div class="col-4">
                          <strong class="d-block f5 text-bold mb-2 text-gray-dark">Apps by GitHub</strong>
                          <ul class="list-style-none f5">
                            <li class="mb-2"><a href="https://desktop.github.com/" class="link-gray" data-ga-click="(Logged out) Header, go to Desktop, experiment:site_header_dropdowns; group:dropdowns">Desktop <span style="color: #959da5;">&#8599;</span></a></li>
                            <li class="mb-2"><a href="https://atom.io/" class="link-gray" data-ga-click="(Logged out) Header, go to Atom, experiment:site_header_dropdowns; group:dropdowns">Atom <span style="color: #959da5;">&#8599;</span></a></li>
                            <li class="mb-2"><a href="https://visualstudio.github.com/" class="link-gray" data-ga-click="(Logged out) Header, go to Visual Studio, experiment:site_header_dropdowns; group:dropdowns">Visual Studio <span style="color: #959da5;">&#8599;</span></a></li>
                            <li class="mb-2"><a href="https://unity.github.com/" class="link-gray" data-ga-click="(Logged out) Header, go to Unity Extension, experiment:site_header_dropdowns; group:dropdowns">Unity Extension <span style="color: #959da5;">&#8599;</span></a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </details>
                </li>
                <li class="HeaderMenu-item dropdown mr-5">
                  <details class="details-expanded details-reset js-dropdown-details ">
                    <summary class="HeaderMenu-target text-white">
                      <div class="d-flex flex-items-baseline flex-justify-between">
                        <span class="d-inline-block mr-1">Business</span>
                        <span class="dropdown-caret"></span>
                      </div>
                    </summary>
                    <div class="dropdown-menu dropdown-menu-s p-4 ml-n4 mt-3 mt-lg-2">
                      <a href="/business" class="d-block d-lg-flex flex-items-center flex-justify-between f5 link-gray-dark text-bold mb-2" data-ga-click="(Logged out) Header, go to Business, experiment:site_header_dropdowns; group:dropdowns"><span>Business overview</span> <svg height="16" class="octicon octicon-chevron-right text-gray-dark" viewBox="0 0 8 16" version="1.1" width="8" aria-hidden="true"><path fill-rule="evenodd" d="M7.5 8l-5 5L1 11.5 4.75 8 1 4.5 2.5 3l5 5z"/></svg></a>
                      <hr class="border border-dashed my-3 d-none d-lg-block">
                      <ul class="list-style-none f5">
                        <li class="mb-2"><a href="/business/customers" class="d-block link-gray" data-ga-click="(Logged out) Header, go to Customers, experiment:site_header_dropdowns; group:dropdowns">Customers</a></li>
                        <li class="mb-2"><a href="/business/security" class="d-block link-gray" data-ga-click="(Logged out) Header, go to Security, experiment:site_header_dropdowns; group:dropdowns">Security</a></li>
                        <li class="mb-2"><a href="https://enterprise.github.com/contact" class="d-block link-gray" data-ga-click="(Logged out) Header, go to Contact, experiment:site_header_dropdowns; group:dropdowns">Contact</a></li>
                      </ul>
                    </div>
                  </details>
                </li>

                <li class="HeaderMenu-item dropdown mr-5">
                  <details class="details-expanded details-reset js-dropdown-details ">
                    <summary class="HeaderMenu-target text-white">
                      <div class="d-flex flex-items-baseline flex-justify-between">
                        <span class="d-inline-block mr-1">Explore</span>
                        <span class="dropdown-caret"></span>
                      </div>
                    </summary>
                    <div class="dropdown-menu dropdown-menu-s p-4 ml-n4 mt-3 mt-lg-2">
                      <ul class="list-style-none f5">
                        <li class="mb-2"><a href="/explore" class="d-lg-flex flex-items-center flex-justify-between link-gray-dark text-bold" data-ga-click="(Logged out) Header, go to Explore GitHub, experiment:site_header_dropdowns; group:dropdowns"><span>Explore GitHub</span> <svg height="16" class="octicon octicon-chevron-right text-gray-dark" viewBox="0 0 8 16" version="1.1" width="8" aria-hidden="true"><path fill-rule="evenodd" d="M7.5 8l-5 5L1 11.5 4.75 8 1 4.5 2.5 3l5 5z"/></svg></a></li>
                        <li class="mb-3"><a href="/trending" class="link-gray d-block" data-ga-click="(Logged out) Header, go to Trending, experiment:site_header_dropdowns; group:dropdowns">Trending</a></li>
                      </ul>

                      <hr class="border border-dashed my-3 d-none d-lg-block">

                      <strong class="d-block f5 text-bold mb-2 text-gray-dark">Learn</strong>
                      <ul class="list-style-none f5">
                        <li class="mb-2"><a href="/topics" class="link-gray d-block" data-ga-click="(Logged out) Header, go to Topics, experiment:site_header_dropdowns; group:dropdowns">Topics</a></li>
                        <li class="mb-2"><a href="/collections" class="link-gray d-block" data-ga-click="(Logged out) Header, go to Collections, experiment:site_header_dropdowns; group:dropdowns">Collections</a></li>
                        <li class="mb-2"><a href="https://lab.github.com/" class="link-gray d-block" data-ga-click="(Logged out) Header, go to Learning Lab, experiment:site_header_dropdowns; group:dropdowns">Learning Lab <span style="color: #959da5;">&#8599;</span></a></li>
                        <li class="mb-3"><a href="https://opensource.guide/" class="link-gray d-block" data-ga-click="(Logged out) Header, go to Open source guides, experiment:site_header_dropdowns; group:dropdowns">Open source guides <span style="color: #959da5;">&#8599;</span></a></li>
                      </ul>

                      <hr class="border border-dashed my-3 d-none d-lg-block">

                      <strong class="d-block f5 text-bold mb-2 text-gray-dark">Connect</strong>
                      <ul class="list-style-none f5">
                        <li class="mb-2"><a href="/events" class="link-gray d-block" data-ga-click="(Logged out) Header, go to Events, experiment:site_header_dropdowns; group:dropdowns">Events</a></li>
                        <li class="mb-2"><a href="https://github.community/" class="link-gray d-block" data-ga-click="(Logged out) Header, go to Community forum, experiment:site_header_dropdowns; group:dropdowns">Community forum <span style="color: #959da5;">&#8599;</span></a></li>
                        <li class="mb-3"><a href="https://education.github.community/" class="link-gray d-block" data-ga-click="(Logged out) Header, go to Education community, experiment:site_header_dropdowns; group:dropdowns">Education community <span style="color: #959da5;">&#8599;</span></a></li>
                      </ul>
                    </div>
                  </details>
                </li>

                <li class="HeaderMenu-item dropdown mr-5">
                  <details class="details-expanded details-reset js-dropdown-details ">
                    <summary class="HeaderMenu-target text-white">
                      <div class="d-flex flex-items-baseline flex-justify-between">
                        <span class="d-inline-block mr-1">Pricing</span>
                        <span class="dropdown-caret"></span>
                      </div>
                    </summary>
                    <div class="dropdown-menu dropdown-menu-s p-4 ml-n4 mt-3 mt-lg-2">
                      <a href="/pricing" class="d-block d-lg-flex flex-items-center flex-justify-between f5 link-gray-dark text-bold mb-3" data-ga-click="(Logged out) Header, go to Pricing, experiment:site_header_dropdowns; group:dropdowns"><span>Pricing overview</span> <svg height="16" class="octicon octicon-chevron-right text-gray-dark" viewBox="0 0 8 16" version="1.1" width="8" aria-hidden="true"><path fill-rule="evenodd" d="M7.5 8l-5 5L1 11.5 4.75 8 1 4.5 2.5 3l5 5z"/></svg></a>
                      <hr class="border border-dashed my-3 d-none d-lg-block">
                      <strong class="d-block f5 text-bold text-gray-dark mb-2">Plans</strong>
                      <ul class="list-style-none f5">
                        <li class="mb-2"><a href="/pricing/developer" class="link-gray d-block" data-ga-click="(Logged out) Header, go to Developer, experiment:site_header_dropdowns; group:dropdowns">Developer</a></li>
                        <li class="mb-2"><a href="/pricing/team" class="link-gray d-block" data-ga-click="(Logged out) Header, go to Team, experiment:site_header_dropdowns; group:dropdowns">Team</a></li>
                        <li class="mb-2"><a href="/pricing/business-hosted" class="link-gray d-block" data-ga-click="(Logged out) Header, go to Business, experiment:site_header_dropdowns; group:dropdowns">Business</a></li>
                        <li class="mb-3"><a href="/pricing#feature-comparison" class="link-gray d-block" data-ga-click="(Logged out) Header, go to Compare plans, experiment:site_header_dropdowns; group:dropdowns">Compare plans</a></li>
                      </ul>
                      <hr class="border border-dashed my-3 d-none d-lg-block">
                      <ul class="list-style-none f5">
                        <li class="mb-2"><a href="https://github.com/nonprofit" class="link-gray-dark" data-ga-click="(Logged out) Header, go to Nonprofits, experiment:site_header_dropdowns; group:dropdowns">Nonprofits</a></li>
                        <li class="mb-2"><a href="https://education.github.com/discount_requests/new" class="link-gray-dark" data-ga-click="(Logged out) Header, go to Education, experiment:site_header_dropdowns; group:dropdowns">Education <span style="color: #959da5;">&#8599;</span></a></li>
                      </ul>
                    </div>
                  </details>
                </li>
            </ul>
          </nav>

        <div class="d-flex flex-items-center">
            <div class="d-flex mr-3 flex-items-center">
              <div class="header-search scoped-search site-scoped-search js-site-search position-relative js-jump-to"
  role="search combobox"
  aria-owns="jump-to-results"
  aria-label="Search or jump to"
  aria-haspopup="listbox"
  aria-expanded="true"
>
  <div class="position-relative">
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="js-site-search-form" data-scope-type="Repository" data-scope-id="103173578" data-scoped-search-url="/terraform-aws-modules/terraform-aws-ec2-instance/search" data-unscoped-search-url="/search" action="/terraform-aws-modules/terraform-aws-ec2-instance/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" />
      <label class="form-control header-search-wrapper header-search-wrapper-jump-to position-relative d-flex flex-justify-between flex-items-center js-chromeless-input-container">
        <input type="text"
          class="form-control header-search-input jump-to-field js-jump-to-field js-site-search-focus js-site-search-field is-clearable"
          data-hotkey="s,/"
          name="q"
          value=""
          placeholder="Search"
          data-unscoped-placeholder="Search GitHub"
          data-scoped-placeholder="Search"
          autocapitalize="off"
          aria-autocomplete="list"
          aria-controls="jump-to-results"
          data-jump-to-suggestions-path="/_graphql/GetSuggestedNavigationDestinations#csrf-token=0uDUv985Rb+br6KVl0Fd6tC7KvTjVPFnVnHHplxkexuQIiIAAtNBPb0G9vJceZdnXo/3DCC0DPJL5+oiuF67og=="
          spellcheck="false"
          autocomplete="off"
          >
          <input type="hidden" class="js-site-search-type-field" name="type" >
            <img src="https://assets-cdn.github.com/images/search-shortcut-hint.svg" alt="" class="mr-2 header-search-key-slash">

            <div class="Box position-absolute overflow-hidden d-none jump-to-suggestions js-jump-to-suggestions-container">
              <ul class="d-none js-jump-to-suggestions-template-container">
                <li class="d-flex flex-justify-start flex-items-center p-0 f5 navigation-item js-navigation-item">
                  <a tabindex="-1" class="no-underline d-flex flex-auto flex-items-center p-2 jump-to-suggestions-path js-jump-to-suggestion-path js-navigation-open" href="">
                    <div class="jump-to-octicon js-jump-to-octicon mr-2 text-center d-none">
                      <svg height="16" width="16" class="octicon octicon-repo flex-shrink-0 js-jump-to-octicon-repo d-none" title="Repository" aria-label="Repository" viewBox="0 0 12 16" version="1.1" role="img"><path fill-rule="evenodd" d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"/></svg>
                      <svg height="16" width="16" class="octicon octicon-project flex-shrink-0 js-jump-to-octicon-project d-none" title="Project" aria-label="Project" viewBox="0 0 15 16" version="1.1" role="img"><path fill-rule="evenodd" d="M10 12h3V2h-3v10zm-4-2h3V2H6v8zm-4 4h3V2H2v12zm-1 1h13V1H1v14zM14 0H1a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h13a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1z"/></svg>
                      <svg height="16" width="16" class="octicon octicon-search flex-shrink-0 js-jump-to-octicon-search d-none" title="Search" aria-label="Search" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M15.7 13.3l-3.81-3.83A5.93 5.93 0 0 0 13 6c0-3.31-2.69-6-6-6S1 2.69 1 6s2.69 6 6 6c1.3 0 2.48-.41 3.47-1.11l3.83 3.81c.19.2.45.3.7.3.25 0 .52-.09.7-.3a.996.996 0 0 0 0-1.41v.01zM7 10.7c-2.59 0-4.7-2.11-4.7-4.7 0-2.59 2.11-4.7 4.7-4.7 2.59 0 4.7 2.11 4.7 4.7 0 2.59-2.11 4.7-4.7 4.7z"/></svg>
                    </div>

                    <img class="avatar mr-2 flex-shrink-0 js-jump-to-suggestion-avatar d-none" alt="" aria-label="Team" src="" width="28" height="28">

                    <div class="jump-to-suggestion-name js-jump-to-suggestion-name flex-auto overflow-hidden text-left no-wrap css-truncate css-truncate-target">
                    </div>

                    <div class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none js-jump-to-badge-search">
                      <span class="js-jump-to-badge-search-text-default d-none" aria-label="in this repository">
                        In this repository
                      </span>
                      <span class="js-jump-to-badge-search-text-global d-none" aria-label="in all of GitHub">
                        All GitHub
                      </span>
                      <span aria-hidden="true" class="d-inline-block ml-1 v-align-middle">↵</span>
                    </div>

                    <div aria-hidden="true" class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none d-on-nav-focus js-jump-to-badge-jump">
                      Jump to
                      <span class="d-inline-block ml-1 v-align-middle">↵</span>
                    </div>
                  </a>
                </li>
              </ul>
              <ul class="d-none js-jump-to-no-results-template-container">
                <li class="d-flex flex-justify-center flex-items-center p-3 f5 d-none">
                  <span class="text-gray">No suggested jump to results</span>
                </li>
              </ul>

              <ul id="jump-to-results" class="js-navigation-container jump-to-suggestions-results-container js-jump-to-suggestions-results-container" >
                <li class="d-flex flex-justify-center flex-items-center p-0 f5">
                  <img src="https://assets-cdn.github.com/images/spinners/octocat-spinner-128.gif" alt="Octocat Spinner Icon" class="m-2" width="28">
                </li>
              </ul>
            </div>
      </label>
</form>  </div>
</div>

            </div>

          <a class="HeaderMenu-target text-white no-underline mr-3" href="/login?return_to=%2Fterraform-aws-modules%2Fterraform-aws-ec2-instance%2Fblob%2Fmaster%2FREADME.md" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in; experiment:site_header_dropdowns; group:dropdowns">Sign&nbsp;in</a>
            <a class="HeaderMenu-target d-inline-block text-white no-underline border border-gray-dark rounded-2 px-2 py-1" href="/join" data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up; experiment:site_header_dropdowns; group:dropdowns">Sign&nbsp;up</a>
        </div>
      </div>
    </div>
  </header>


  </div>

  <div id="start-of-content" class="show-on-focus"></div>

    <div id="js-flash-container">


</div>



  <div role="main" class="application-main ">
        <div itemscope itemtype="http://schema.org/SoftwareSourceCode" class="">
    <div id="js-repo-pjax-container" data-pjax-container >
      





  



  <div class="pagehead repohead instapaper_ignore readability-menu experiment-repo-nav  ">
    <div class="repohead-details-container clearfix container">

      <ul class="pagehead-actions">
  <li>
      <a href="/login?return_to=%2Fterraform-aws-modules%2Fterraform-aws-ec2-instance"
    class="btn btn-sm btn-with-count tooltipped tooltipped-s"
    aria-label="You must be signed in to watch a repository" rel="nofollow">
    <svg class="octicon octicon-eye v-align-text-bottom" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
    Watch
  </a>
  <a class="social-count" href="/terraform-aws-modules/terraform-aws-ec2-instance/watchers"
     aria-label="4 users are watching this repository">
    4
  </a>

  </li>

  <li>
      <a href="/login?return_to=%2Fterraform-aws-modules%2Fterraform-aws-ec2-instance"
    class="btn btn-sm btn-with-count tooltipped tooltipped-s"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <svg class="octicon octicon-star v-align-text-bottom" viewBox="0 0 14 16" version="1.1" width="14" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74L14 6z"/></svg>
    Star
  </a>

    <a class="social-count js-social-count" href="/terraform-aws-modules/terraform-aws-ec2-instance/stargazers"
      aria-label="60 users starred this repository">
      60
    </a>

  </li>

  <li>
      <a href="/login?return_to=%2Fterraform-aws-modules%2Fterraform-aws-ec2-instance"
        class="btn btn-sm btn-with-count tooltipped tooltipped-s"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <svg class="octicon octicon-repo-forked v-align-text-bottom" viewBox="0 0 10 16" version="1.1" width="10" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8 1a1.993 1.993 0 0 0-1 3.72V6L5 8 3 6V4.72A1.993 1.993 0 0 0 2 1a1.993 1.993 0 0 0-1 3.72V6.5l3 3v1.78A1.993 1.993 0 0 0 5 15a1.993 1.993 0 0 0 1-3.72V9.5l3-3V4.72A1.993 1.993 0 0 0 8 1zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3 10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3-10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
        Fork
      </a>

    <a href="/terraform-aws-modules/terraform-aws-ec2-instance/network/members" class="social-count"
       aria-label="108 users forked this repository">
      108
    </a>
  </li>
</ul>

      <h1 class="public ">
  <svg class="octicon octicon-repo" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"/></svg>
  <span class="author" itemprop="author"><a class="url fn" rel="author" href="/terraform-aws-modules">terraform-aws-modules</a></span><!--
--><span class="path-divider">/</span><!--
--><strong itemprop="name"><a data-pjax="#js-repo-pjax-container" href="/terraform-aws-modules/terraform-aws-ec2-instance">terraform-aws-ec2-instance</a></strong>

</h1>

    </div>
    
<nav class="reponav js-repo-nav js-sidenav-container-pjax container"
     itemscope
     itemtype="http://schema.org/BreadcrumbList"
     role="navigation"
     data-pjax="#js-repo-pjax-container">

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a class="js-selected-navigation-item selected reponav-item" itemprop="url" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches repo_packages /terraform-aws-modules/terraform-aws-ec2-instance" href="/terraform-aws-modules/terraform-aws-ec2-instance">
      <svg class="octicon octicon-code" viewBox="0 0 14 16" version="1.1" width="14" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M9.5 3L8 4.5 11.5 8 8 11.5 9.5 13 14 8 9.5 3zm-5 0L0 8l4.5 5L6 11.5 2.5 8 6 4.5 4.5 3z"/></svg>
      <span itemprop="name">Code</span>
      <meta itemprop="position" content="1">
</a>  </span>

    <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
      <a itemprop="url" data-hotkey="g i" class="js-selected-navigation-item reponav-item" data-selected-links="repo_issues repo_labels repo_milestones /terraform-aws-modules/terraform-aws-ec2-instance/issues" href="/terraform-aws-modules/terraform-aws-ec2-instance/issues">
        <svg class="octicon octicon-issue-opened" viewBox="0 0 14 16" version="1.1" width="14" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7 2.3c3.14 0 5.7 2.56 5.7 5.7s-2.56 5.7-5.7 5.7A5.71 5.71 0 0 1 1.3 8c0-3.14 2.56-5.7 5.7-5.7zM7 1C3.14 1 0 4.14 0 8s3.14 7 7 7 7-3.14 7-7-3.14-7-7-7zm1 3H6v5h2V4zm0 6H6v2h2v-2z"/></svg>
        <span itemprop="name">Issues</span>
        <span class="Counter">5</span>
        <meta itemprop="position" content="2">
</a>    </span>

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a data-hotkey="g p" itemprop="url" class="js-selected-navigation-item reponav-item" data-selected-links="repo_pulls checks /terraform-aws-modules/terraform-aws-ec2-instance/pulls" href="/terraform-aws-modules/terraform-aws-ec2-instance/pulls">
      <svg class="octicon octicon-git-pull-request" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M11 11.28V5c-.03-.78-.34-1.47-.94-2.06C9.46 2.35 8.78 2.03 8 2H7V0L4 3l3 3V4h1c.27.02.48.11.69.31.21.2.3.42.31.69v6.28A1.993 1.993 0 0 0 10 15a1.993 1.993 0 0 0 1-3.72zm-1 2.92c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zM4 3c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v6.56A1.993 1.993 0 0 0 2 15a1.993 1.993 0 0 0 1-3.72V4.72c.59-.34 1-.98 1-1.72zm-.8 10c0 .66-.55 1.2-1.2 1.2-.65 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
      <span itemprop="name">Pull requests</span>
      <span class="Counter">1</span>
      <meta itemprop="position" content="3">
</a>  </span>





  <a class="js-selected-navigation-item reponav-item" data-selected-links="repo_graphs repo_contributors dependency_graph pulse /terraform-aws-modules/terraform-aws-ec2-instance/pulse" href="/terraform-aws-modules/terraform-aws-ec2-instance/pulse">
    <svg class="octicon octicon-graph" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M16 14v1H0V0h1v14h15zM5 13H3V8h2v5zm4 0H7V3h2v10zm4 0h-2V6h2v7z"/></svg>
    Insights
</a>

</nav>


  </div>

<div class="container new-discussion-timeline experiment-repo-nav  ">
  <div class="repository-content ">

    
  <a class="d-none js-permalink-shortcut" data-hotkey="y" href="/terraform-aws-modules/terraform-aws-ec2-instance/blob/fcf0c6e1a1ad85509fad6b80f15276c395bbfffe/README.md">Permalink</a>

  <!-- blob contrib key: blob_contributors:v21:67d41fcadf9952f3fb3a22c1027f167f -->

      <div class="signup-prompt-bg rounded-1">
      <div class="signup-prompt p-4 text-center mb-4 rounded-1">
        <div class="position-relative">
          <!-- '"` --><!-- </textarea></xmp> --></option></form><form action="/site/dismiss_signup_prompt" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="1d+9ecPKhdsiKWNdIxhN+3gHs5Nm81EpG3aME2ZLQWsOwbvab432dAEZ/SqGUJ1o7PyZn5dZK5W8x25zG4Idmg==" />
            <button type="submit" class="position-absolute top-0 right-0 btn-link link-gray" data-ga-click="(Logged out) Sign up prompt, clicked Dismiss, text:dismiss">
              Dismiss
            </button>
</form>          <h3 class="pt-2">Join GitHub today</h3>
          <p class="col-6 mx-auto">GitHub is home to over 28 million developers working together to host and review code, manage projects, and build software together.</p>
          <a class="btn btn-primary" href="/join?source=prompt-blob-show" data-ga-click="(Logged out) Sign up prompt, clicked Sign up, text:sign-up">Sign up</a>
        </div>
      </div>
    </div>


  <div class="file-navigation">
    
<div class="select-menu branch-select-menu js-menu-container js-select-menu float-left">
  <button class=" btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    
    type="button" aria-label="Switch branches or tags" aria-expanded="false" aria-haspopup="true">
      <i>Branch:</i>
      <span class="js-select-button css-truncate-target">master</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <svg class="octicon octicon-x js-menu-close" role="img" aria-label="Close" viewBox="0 0 12 16" version="1.1" width="12" height="16"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48L7.48 8z"/></svg>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="form-control js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/terraform-aws-modules/terraform-aws-ec2-instance/blob/master/README.md"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.11.0/README.md"
              data-name="v1.11.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0">
                v1.11.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.10.0/README.md"
              data-name="v1.10.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.0">
                v1.10.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.9.0/README.md"
              data-name="v1.9.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0">
                v1.9.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.8.0/README.md"
              data-name="v1.8.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.0">
                v1.8.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.7.0/README.md"
              data-name="v1.7.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0">
                v1.7.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.6.0/README.md"
              data-name="v1.6.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0">
                v1.6.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.5.0/README.md"
              data-name="v1.5.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.5.0">
                v1.5.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.4.0/README.md"
              data-name="v1.4.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.4.0">
                v1.4.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.3.0/README.md"
              data-name="v1.3.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.3.0">
                v1.3.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.2.1/README.md"
              data-name="v1.2.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.2.1">
                v1.2.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.2.0/README.md"
              data-name="v1.2.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.2.0">
                v1.2.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.1.0/README.md"
              data-name="v1.1.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.1.0">
                v1.1.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.0.4/README.md"
              data-name="v1.0.4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.0.4">
                v1.0.4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.0.3/README.md"
              data-name="v1.0.3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.0.3">
                v1.0.3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.0.2/README.md"
              data-name="v1.0.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.0.2">
                v1.0.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.0.1/README.md"
              data-name="v1.0.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.0.1">
                v1.0.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/terraform-aws-modules/terraform-aws-ec2-instance/tree/v1.0.0/README.md"
              data-name="v1.0.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.0.0">
                v1.0.0
              </span>
            </a>
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

    <div class="BtnGroup float-right">
      <a href="/terraform-aws-modules/terraform-aws-ec2-instance/find/master"
            class="js-pjax-capture-input btn btn-sm BtnGroup-item"
            data-pjax
            data-hotkey="t">
        Find file
      </a>
      <clipboard-copy for="blob-path" class="btn btn-sm BtnGroup-item">
        Copy path
      </clipboard-copy>
    </div>
    <div id="blob-path" class="breadcrumb">
      <span class="repo-root js-repo-root"><span class="js-path-segment"><a data-pjax="true" href="/terraform-aws-modules/terraform-aws-ec2-instance"><span>terraform-aws-ec2-instance</span></a></span></span><span class="separator">/</span><strong class="final-path">README.md</strong>
    </div>
  </div>


  <include-fragment src="/terraform-aws-modules/terraform-aws-ec2-instance/contributors/master/README.md" class="commit-tease commit-loader">
    <div>
      Fetching contributors&hellip;
    </div>

    <div class="commit-tease-contributors">
        <img alt="" class="loader-loading float-left" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" height="16" />
      <span class="loader-error">Cannot retrieve contributors at this time</span>
    </div>
</include-fragment>


  <div class="file">
    <div class="file-header">
  <div class="file-actions">

    <div class="BtnGroup">
      <a id="raw-url" class="btn btn-sm BtnGroup-item" href="/terraform-aws-modules/terraform-aws-ec2-instance/raw/master/README.md">Raw</a>
        <a class="btn btn-sm js-update-url-with-hash BtnGroup-item" data-hotkey="b" href="/terraform-aws-modules/terraform-aws-ec2-instance/blame/master/README.md">Blame</a>
      <a rel="nofollow" class="btn btn-sm BtnGroup-item" href="/terraform-aws-modules/terraform-aws-ec2-instance/commits/master/README.md">History</a>
    </div>


        <button type="button" class="btn-octicon disabled tooltipped tooltipped-nw"
          aria-label="You must be signed in to make or propose changes">
          <svg class="octicon octicon-pencil" viewBox="0 0 14 16" version="1.1" width="14" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 0 1 1.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z"/></svg>
        </button>
        <button type="button" class="btn-octicon btn-octicon-danger disabled tooltipped tooltipped-nw"
          aria-label="You must be signed in to make or propose changes">
          <svg class="octicon octicon-trashcan" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M11 2H9c0-.55-.45-1-1-1H5c-.55 0-1 .45-1 1H2c-.55 0-1 .45-1 1v1c0 .55.45 1 1 1v9c0 .55.45 1 1 1h7c.55 0 1-.45 1-1V5c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm-1 12H3V5h1v8h1V5h1v8h1V5h1v8h1V5h1v9zm1-10H2V3h9v1z"/></svg>
        </button>
  </div>

  <div class="file-info">
      148 lines (113 sloc)
      <span class="file-info-divider"></span>
    6.78 KB
  </div>
</div>

    
  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text"><h1><a id="user-content-aws-ec2-instance-terraform-module" class="anchor" aria-hidden="true" href="#aws-ec2-instance-terraform-module"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>AWS EC2 Instance Terraform module</h1>
<p>Terraform module which creates EC2 instance(s) on AWS.</p>
<p>These types of resources are supported:</p>
<ul>
<li><a href="https://www.terraform.io/docs/providers/aws/r/instance.html" rel="nofollow">EC2 instance</a></li>
</ul>
<h2><a id="user-content-usage" class="anchor" aria-hidden="true" href="#usage"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Usage</h2>
<div class="highlight highlight-source-terraform"><pre><span class="pl-k">module</span> <span class="pl-s">"</span><span class="pl-s">ec2_cluster</span><span class="pl-s">"</span> {
  <span class="pl-smi">source</span> <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">terraform-aws-modules/ec2-instance/aws</span><span class="pl-s">"</span>

  <span class="pl-smi">name</span>           <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">my-cluster</span><span class="pl-s">"</span>
  <span class="pl-smi">instance_count</span> <span class="pl-k">=</span> <span class="pl-c1">5</span>
  
  <span class="pl-smi">ami</span>                    <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">ami-ebd02392</span><span class="pl-s">"</span>
  <span class="pl-smi">instance_type</span>          <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">t2.micro</span><span class="pl-s">"</span>
  <span class="pl-smi">key_name</span>               <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">user1</span><span class="pl-s">"</span>
  <span class="pl-smi">monitoring</span>             <span class="pl-k">=</span> <span class="pl-c1">true</span>
  <span class="pl-smi">vpc_security_group_ids</span> <span class="pl-k">=</span> [<span class="pl-s">"</span><span class="pl-s">sg-12345678</span><span class="pl-s">"</span>]
  <span class="pl-smi">subnet_id</span>              <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">subnet-eddcdzz4</span><span class="pl-s">"</span>

  <span class="pl-smi">tags</span> <span class="pl-k">=</span> {
    <span class="pl-smi">Terraform</span> <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">true</span><span class="pl-s">"</span>
    <span class="pl-smi">Environment</span> <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">dev</span><span class="pl-s">"</span>
  }
}</pre></div>
<h2><a id="user-content-examples" class="anchor" aria-hidden="true" href="#examples"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Examples</h2>
<ul>
<li><a href="https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/tree/master/examples/basic">Basic EC2 instance</a></li>
<li><a href="https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/tree/master/examples/volume-attachment">EC2 instance with EBS volume attachment</a></li>
</ul>
<h2><a id="user-content-make-an-encrypted-ami-for-use" class="anchor" aria-hidden="true" href="#make-an-encrypted-ami-for-use"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Make an encrypted AMI for use</h2>
<p>This module does not sopport encrypted AMI's out of the box however it is easy enough for you to generate one for use</p>
<p>This example creates an encrypted image from the latest ubuntu 16.04 base image.</p>
<div class="highlight highlight-source-terraform"><pre><span class="pl-k">resource</span> <span class="pl-s">"</span><span class="pl-s">aws_ami_copy</span><span class="pl-s">"</span> <span class="pl-s">"</span><span class="pl-s">ubuntu-xenial-encrypted-ami</span><span class="pl-s">"</span> {
  <span class="pl-smi">name</span>              <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">ubuntu-xenial-encrypted-ami</span><span class="pl-s">"</span>
  <span class="pl-smi">description</span>       <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">An</span> <span class="pl-s">encrypted</span> <span class="pl-s">root</span> <span class="pl-s">ami</span> <span class="pl-s">based</span> <span class="pl-s">off</span> <span class="pl-s1"><span class="pl-e">${</span><span class="pl-e">data.aws_ami.ubuntu</span>-xenial<span class="pl-k">.</span>id<span class="pl-e">}</span></span><span class="pl-s">"</span>
  <span class="pl-smi">source_ami_id</span>     <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s1"><span class="pl-e">${</span><span class="pl-e">data.aws_ami.ubuntu</span>-xenial<span class="pl-k">.</span>id<span class="pl-e">}</span></span><span class="pl-s">"</span>
  <span class="pl-smi">source_ami_region</span> <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">eu-west-2</span><span class="pl-s">"</span>
  <span class="pl-smi">encrypted</span>         <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">true</span><span class="pl-s">"</span>

  <span class="pl-en">tags</span> {
    <span class="pl-smi">Name</span> <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">ubuntu-xenial-encrypted-ami</span><span class="pl-s">"</span>
  }
}

<span class="pl-k">data</span> <span class="pl-s">"</span><span class="pl-s">aws_ami</span><span class="pl-s">"</span> <span class="pl-s">"</span><span class="pl-s">encrypted-ami</span><span class="pl-s">"</span> {
  <span class="pl-smi">most_recent</span> <span class="pl-k">=</span> <span class="pl-c1">true</span>

  <span class="pl-en">filter</span> {
    <span class="pl-smi">name</span>   <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">name</span><span class="pl-s">"</span>
    <span class="pl-smi">values</span> <span class="pl-k">=</span> [<span class="pl-s">"</span><span class="pl-s">ubuntu-xenial-encrypted</span><span class="pl-s">"</span>]
  }

  <span class="pl-smi">owners</span> <span class="pl-k">=</span> [<span class="pl-s">"</span><span class="pl-s">self</span><span class="pl-s">"</span>]
}

<span class="pl-k">data</span> <span class="pl-s">"</span><span class="pl-s">aws_ami</span><span class="pl-s">"</span> <span class="pl-s">"</span><span class="pl-s">ubuntu-xenial</span><span class="pl-s">"</span> {
  <span class="pl-smi">most_recent</span> <span class="pl-k">=</span> <span class="pl-c1">true</span>
  <span class="pl-smi">owners</span>      <span class="pl-k">=</span> [<span class="pl-s">"</span><span class="pl-s">099720109477</span><span class="pl-s">"</span>]

  <span class="pl-en">filter</span> {
    <span class="pl-smi">name</span>   <span class="pl-k">=</span> <span class="pl-s">"</span><span class="pl-s">name</span><span class="pl-s">"</span>
    <span class="pl-smi">values</span> <span class="pl-k">=</span> [<span class="pl-s">"</span><span class="pl-s">ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-</span>*<span class="pl-s">"</span>]
  }
}</pre></div>
<h2><a id="user-content-notes" class="anchor" aria-hidden="true" href="#notes"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Notes</h2>
<ul>
<li><code>network_interface</code> can't be specified together with <code>associate_public_ip_address</code>, which makes <code>network_interface</code>
not configurable using this module at the moment</li>
<li>Changes in <code>ebs_block_device</code> argument will be ignored. Use <a href="https://www.terraform.io/docs/providers/aws/r/volume_attachment.html" rel="nofollow">aws_volume_attachment</a> resource to attach and detach volumes from AWS EC2 instances. See <a href="https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/tree/master/examples/volume-attachment">this example</a>.</li>
</ul>

<h2><a id="user-content-inputs" class="anchor" aria-hidden="true" href="#inputs"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Inputs</h2>
<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
<th align="center">Type</th>
<th align="center">Default</th>
<th align="center">Required</th>
</tr>
</thead>
<tbody>
<tr>
<td>ami</td>
<td>ID of AMI to use for the instance</td>
<td align="center">string</td>
<td align="center">-</td>
<td align="center">yes</td>
</tr>
<tr>
<td>associate_public_ip_address</td>
<td>If true, the EC2 instance will have associated public IP address</td>
<td align="center">string</td>
<td align="center"><code>false</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>cpu_credits</td>
<td>The credit option for CPU usage (unlimited or standard)</td>
<td align="center">string</td>
<td align="center"><code>standard</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>disable_api_termination</td>
<td>If true, enables EC2 Instance Termination Protection</td>
<td align="center">string</td>
<td align="center"><code>false</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>ebs_block_device</td>
<td>Additional EBS block devices to attach to the instance</td>
<td align="center">string</td>
<td align="center"><code>&lt;list&gt;</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>ebs_optimized</td>
<td>If true, the launched EC2 instance will be EBS-optimized</td>
<td align="center">string</td>
<td align="center"><code>false</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>ephemeral_block_device</td>
<td>Customize Ephemeral (also known as Instance Store) volumes on the instance</td>
<td align="center">string</td>
<td align="center"><code>&lt;list&gt;</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>iam_instance_profile</td>
<td>The IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile.</td>
<td align="center">string</td>
<td align="center">``</td>
<td align="center">no</td>
</tr>
<tr>
<td>instance_count</td>
<td>Number of instances to launch</td>
<td align="center">string</td>
<td align="center"><code>1</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>instance_initiated_shutdown_behavior</td>
<td>Shutdown behavior for the instance</td>
<td align="center">string</td>
<td align="center">``</td>
<td align="center">no</td>
</tr>
<tr>
<td>instance_type</td>
<td>The type of instance to start</td>
<td align="center">string</td>
<td align="center">-</td>
<td align="center">yes</td>
</tr>
<tr>
<td>ipv6_address_count</td>
<td>A number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet.</td>
<td align="center">string</td>
<td align="center"><code>0</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>ipv6_addresses</td>
<td>Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface</td>
<td align="center">string</td>
<td align="center"><code>&lt;list&gt;</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>key_name</td>
<td>The key name to use for the instance</td>
<td align="center">string</td>
<td align="center">``</td>
<td align="center">no</td>
</tr>
<tr>
<td>monitoring</td>
<td>If true, the launched EC2 instance will have detailed monitoring enabled</td>
<td align="center">string</td>
<td align="center"><code>false</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>name</td>
<td>Name to be used on all resources as prefix</td>
<td align="center">string</td>
<td align="center">-</td>
<td align="center">yes</td>
</tr>
<tr>
<td>network_interface</td>
<td>Customize network interfaces to be attached at instance boot time</td>
<td align="center">string</td>
<td align="center"><code>&lt;list&gt;</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>placement_group</td>
<td>The Placement Group to start the instance in</td>
<td align="center">string</td>
<td align="center">``</td>
<td align="center">no</td>
</tr>
<tr>
<td>private_ip</td>
<td>Private IP address to associate with the instance in a VPC</td>
<td align="center">string</td>
<td align="center">``</td>
<td align="center">no</td>
</tr>
<tr>
<td>root_block_device</td>
<td>Customize details about the root block device of the instance. See Block Devices below for details</td>
<td align="center">string</td>
<td align="center"><code>&lt;list&gt;</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>source_dest_check</td>
<td>Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs.</td>
<td align="center">string</td>
<td align="center"><code>true</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>subnet_id</td>
<td>The VPC Subnet ID to launch in</td>
<td align="center">string</td>
<td align="center">-</td>
<td align="center">yes</td>
</tr>
<tr>
<td>tags</td>
<td>A mapping of tags to assign to the resource</td>
<td align="center">string</td>
<td align="center"><code>&lt;map&gt;</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>tenancy</td>
<td>The tenancy of the instance (if the instance is running in a VPC). Available values: default, dedicated, host.</td>
<td align="center">string</td>
<td align="center"><code>default</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>user_data</td>
<td>The user data to provide when launching the instance</td>
<td align="center">string</td>
<td align="center">``</td>
<td align="center">no</td>
</tr>
<tr>
<td>volume_tags</td>
<td>A mapping of tags to assign to the devices created by the instance at launch time</td>
<td align="center">string</td>
<td align="center"><code>&lt;map&gt;</code></td>
<td align="center">no</td>
</tr>
<tr>
<td>vpc_security_group_ids</td>
<td>A list of security group IDs to associate with</td>
<td align="center">list</td>
<td align="center">-</td>
<td align="center">yes</td>
</tr></tbody></table>
<h2><a id="user-content-outputs" class="anchor" aria-hidden="true" href="#outputs"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Outputs</h2>
<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>availability_zone</td>
<td>List of availability zones of instances</td>
</tr>
<tr>
<td>credit_specification</td>
<td>List of credit specification of instances</td>
</tr>
<tr>
<td>id</td>
<td>List of IDs of instances</td>
</tr>
<tr>
<td>key_name</td>
<td>List of key names of instances</td>
</tr>
<tr>
<td>network_interface_id</td>
<td>List of IDs of the network interface of instances</td>
</tr>
<tr>
<td>primary_network_interface_id</td>
<td>List of IDs of the primary network interface of instances</td>
</tr>
<tr>
<td>private_dns</td>
<td>List of private DNS names assigned to the instances. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC</td>
</tr>
<tr>
<td>private_ip</td>
<td>List of private IP addresses assigned to the instances</td>
</tr>
<tr>
<td>public_dns</td>
<td>List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC</td>
</tr>
<tr>
<td>public_ip</td>
<td>List of public IP addresses assigned to the instances, if applicable</td>
</tr>
<tr>
<td>security_groups</td>
<td>List of associated security groups of instances</td>
</tr>
<tr>
<td>subnet_id</td>
<td>List of IDs of VPC subnets of instances</td>
</tr>
<tr>
<td>tags</td>
<td>List of tags of instances</td>
</tr>
<tr>
<td>vpc_security_group_ids</td>
<td>List of associated security groups of instances, if running in non-default VPC</td>
</tr></tbody></table>

<h2><a id="user-content-authors" class="anchor" aria-hidden="true" href="#authors"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Authors</h2>
<p>Module managed by <a href="https://github.com/antonbabenko">Anton Babenko</a>.</p>
<h2><a id="user-content-license" class="anchor" aria-hidden="true" href="#license"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>License</h2>
<p>Apache 2 Licensed. See LICENSE for full details.</p>
</article>
  </div>

  </div>

  <details class="details-reset details-overlay details-overlay-dark">
    <summary data-hotkey="l" aria-label="Jump to line"></summary>
    <details-dialog class="Box Box--overlay d-flex flex-column anim-fade-in fast linejump" aria-label="Jump to line">
      <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="js-jump-to-line-form Box-body d-flex" action="" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" />
        <input class="form-control flex-auto mr-3 linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
        <button type="submit" class="btn" data-close-dialog>Go</button>
</form>    </details-dialog>
  </details>


  </div>
  <div class="modal-backdrop js-touch-events"></div>
</div>

    </div>
  </div>

  </div>

        
<div class="footer container-lg px-3" role="contentinfo">
  <div class="position-relative d-flex flex-justify-between pt-6 pb-2 mt-6 f6 text-gray border-top border-gray-light ">
    <ul class="list-style-none d-flex flex-wrap ">
      <li class="mr-3">&copy; 2018 <span title="0.13245s from unicorn-589bc4c855-5l5ml">GitHub</span>, Inc.</li>
        <li class="mr-3"><a data-ga-click="Footer, go to terms, text:terms" href="https://github.com/site/terms">Terms</a></li>
        <li class="mr-3"><a data-ga-click="Footer, go to privacy, text:privacy" href="https://github.com/site/privacy">Privacy</a></li>
        <li class="mr-3"><a href="https://help.github.com/articles/github-security/" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li class="mr-3"><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
        <li><a data-ga-click="Footer, go to help, text:help" href="https://help.github.com">Help</a></li>
    </ul>

    <a aria-label="Homepage" title="GitHub" class="footer-octicon mr-lg-4" href="https://github.com">
      <svg height="24" class="octicon octicon-mark-github" viewBox="0 0 16 16" version="1.1" width="24" aria-hidden="true"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
</a>
   <ul class="list-style-none d-flex flex-wrap ">
        <li class="mr-3"><a data-ga-click="Footer, go to contact, text:contact" href="https://github.com/contact">Contact GitHub</a></li>
        <li class="mr-3"><a href="https://github.com/pricing" data-ga-click="Footer, go to Pricing, text:Pricing">Pricing</a></li>
      <li class="mr-3"><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li class="mr-3"><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
        <li class="mr-3"><a href="https://blog.github.com" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a data-ga-click="Footer, go to about, text:about" href="https://github.com/about">About</a></li>

    </ul>
  </div>
  <div class="d-flex flex-justify-center pb-6">
    <span class="f6 text-gray-light"></span>
  </div>
</div>



  <div id="ajax-error-message" class="ajax-error-message flash flash-error">
    <svg class="octicon octicon-alert" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.893 1.5c-.183-.31-.52-.5-.887-.5s-.703.19-.886.5L.138 13.499a.98.98 0 0 0 0 1.001c.193.31.53.501.886.501h13.964c.367 0 .704-.19.877-.5a1.03 1.03 0 0 0 .01-1.002L8.893 1.5zm.133 11.497H6.987v-2.003h2.039v2.003zm0-3.004H6.987V5.987h2.039v4.006z"/></svg>
    <button type="button" class="flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
      <svg class="octicon octicon-x" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48L7.48 8z"/></svg>
    </button>
    You can’t perform that action at this time.
  </div>


    <script crossorigin="anonymous" integrity="sha512-RJ1ufbxsSbKjRCyYvinsPNKvTBvcvvKUvEOJ8g+GjtWI5SuRr+QPBlZcvRDws4H9YwAgdQFcGxfL8UbwEfdI7A==" type="application/javascript" src="https://assets-cdn.github.com/assets/compat-daf14de28fadf1e2bc40d100cb773e2b.js"></script>
    <script crossorigin="anonymous" integrity="sha512-n9IXriKuLiZTfIzWL0DsMVix3Cm2i6RXjj7H+fh2WF5RW/Eb2hOzXWPirYC5tkzHGSFVfZphDKu8UHnpaX1kLQ==" type="application/javascript" src="https://assets-cdn.github.com/assets/frameworks-01a87f433690ab628a8c56d0bf802980.js"></script>
    
    <script crossorigin="anonymous" async="async" integrity="sha512-Ogq9CpToqFB/fxlZvzptPI5a2jEkkNyHUHfwo5LoP8/GxX21v18f9q37YlIqAtRHTtB2Jrz0ewX+Ug9YgOKfjw==" type="application/javascript" src="https://assets-cdn.github.com/assets/github-a3318b7d662e13f0591afa529576736d.js"></script>
    
    
    
  <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner d-none">
    <svg class="octicon octicon-alert" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.893 1.5c-.183-.31-.52-.5-.887-.5s-.703.19-.886.5L.138 13.499a.98.98 0 0 0 0 1.001c.193.31.53.501.886.501h13.964c.367 0 .704-.19.877-.5a1.03 1.03 0 0 0 .01-1.002L8.893 1.5zm.133 11.497H6.987v-2.003h2.039v2.003zm0-3.004H6.987V5.987h2.039v4.006z"/></svg>
    <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
    <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
  </div>
  <div class="facebox" id="facebox" style="display:none;">
  <div class="facebox-popup">
    <div class="facebox-content" role="dialog" aria-labelledby="facebox-header" aria-describedby="facebox-description">
    </div>
    <button type="button" class="facebox-close js-facebox-close" aria-label="Close modal">
      <svg class="octicon octicon-x" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48L7.48 8z"/></svg>
    </button>
  </div>
</div>

  <template id="site-details-dialog">
  <details class="details-reset details-overlay details-overlay-dark lh-default text-gray-dark" open>
    <summary aria-haspopup="dialog" aria-label="Close dialog"></summary>
    <details-dialog class="Box Box--overlay d-flex flex-column anim-fade-in fast">
      <button class="m-3 btn-octicon position-absolute right-0 top-0" type="button" aria-label="Close dialog" data-close-dialog>
        <svg class="octicon octicon-x" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48L7.48 8z"/></svg>
      </button>
      <div class="octocat-spinner my-6 js-details-dialog-spinner"></div>
    </details-dialog>
  </details>
</template>

  <div class="Popover js-hovercard-content position-absolute" style="display: none; outline: none;" tabindex="0">
  <div class="Popover-message Popover-message--bottom-left Popover-message--large Box box-shadow-large" style="width:360px;">
  </div>
</div>

<div id="hovercard-aria-description" class="sr-only">
  Press h to open a hovercard with more details.
</div>


  </body>
</html>

