
$('form.multi-step').each(function(){
  var currentStep = $(this).find('.step.current');

  $(this).find(".next-step").click(function(){
    event.preventDefault();
    form = $(this).closest('form');
    navigateTo(nextStep(form));
    updateNav(form);
  });
  $(this).find(".prev-step").click(function(){
    event.preventDefault();
    form = $(this).closest('form');
    navigateTo(prevStep(form));
    updateNav(form);
  });

  updateNav($(this));
});

function nextStep(form) {
  currentStepIndex = $(form).find('.step').index($(form).find('.step.current'));
  next = $(form).find('.step').eq(currentStepIndex + 1);
  return next;
}

function prevStep(form) {
  currentStepIndex = $(form).find('.step').index($(form).find('.step.current'));
  prev = $(form).find('.step').eq(currentStepIndex - 1);
  return prev;
}

function goToStep(link, stepIndex) {
  formId = $(link).closest("ul").attr("data-target");
  form = $('#'+formId);
  steps = form.find('.step');
  next = steps[stepIndex];

  navigateTo($(next));
  updateNav(form);
}

function navigateTo(next) {
  if (!next) {
    return;
  }

  form = next.closest('form');
  form.find('.current').removeClass("current");
  next.addClass("current");
}

function updateNav(form) {
  steps = $(form).find('.step');
  currentStepIndex = steps.index($(form).find('.step.current'));
  prev = steps[currentStepIndex - 1];
  next = steps[currentStepIndex + 1];

  if (!prev)
    $(form).find(".prev-step").hide();
  else
    $(form).find(".prev-step").show();

  if (!next)
    $(form).find(".next-step").hide();
  else
    $(form).find(".next-step").show();

  height = form.find('.current').outerHeight();
  form.find('.steps').css('height', height+"px");

  // Update nav
  $('.multi-step-nav').find('.active').removeClass('active');
  $('.multi-step-nav').find('li').eq(currentStepIndex).addClass('active');
}

