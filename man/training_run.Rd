% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/training_run.R
\name{training_run}
\alias{training_run}
\title{Run a training script}
\usage{
training_run(file = "train.R", context = "local",
  config = Sys.getenv("R_CONFIG_ACTIVE", unset = "default"), flags = NULL,
  properties = NULL, run_dir = NULL, echo = TRUE, view = "auto",
  envir = parent.frame(), encoding = getOption("encoding"))
}
\arguments{
\item{file}{Path to training script (defaults to "train.R")}

\item{context}{Run context (defaults to "local")}

\item{config}{The configuration to use. Defaults to the active configuration
for the current environment (as specified by the \code{R_CONFIG_ACTIVE}
environment variable), or \code{default} when unset.}

\item{flags}{Named list with flag values (see \code{\link[=flags]{flags()}}) or path
to YAML file containing flag values.}

\item{properties}{Named character vector with run properties. Properties are
additional metadata about the run which will be subsequently available via
\code{\link[=ls_runs]{ls_runs()}}.}

\item{run_dir}{Directory to store run data within}

\item{echo}{Print expressions within training script}

\item{view}{View the results of the run after training. The default "auto"
will view the run when executing a top-level (printed) statement in an
interactive session. Pass \code{TRUE} or \code{FALSE} to control whether the view is
shown explictly. You can also pass "save" to save a copy of the
run report at \code{tfruns.d/view.html}}

\item{envir}{The environment in which the script should be evaluated}

\item{encoding}{The encoding of the training script; see \code{\link[=file]{file()}}.}
}
\value{
Single row data frame with run flags, metrics, etc.
}
\description{
Run a training script
}
\details{
The training run will by default use a unique new run directory
within the "runs" sub-directory of the current working directory (or to the
value of the \code{tfruns.runs_dir} R option if specified).

The directory name will be a timestamp (in GMT time). If a duplicate name is
generated then the function will wait long enough to return a unique one.

If you want to use an alternate directory to store run data you can either
set the global \code{tfruns.runs_dir} R option, or you can pass a \code{run_dir}
explicitly to \code{training_run()}, optionally using the \code{\link[=unique_run_dir]{unique_run_dir()}}
function to generate a timestamp-based directory name.
}
