#' Consumer preference mapping of Danish carrots types.
#'
#' A reduced version of the carrots dataset which is distributed with the
#' lmerTest package. The reduced dataset includes data from all 103 consumers
#' included in the original dataset, but preference scores are only reported on
#' for 6 of the 12 Danish carrot types (all the products with an \emph{'_E'}
#' suffix). The other columns retained from the original dataset are consumer
#' ratings of carrot sweetness, bitterness, and crispiness; the frequency
#' at which each consumer consumed carrots; and the age, sex, income, and
#' employment categories the consumers fell into.
#'
#' @format A data frame with 618 rows and 11 variables:
#' \describe{
#'   \item{Product}{Factor with 6 levels, giving the names of types of Danish carrots.}
#'   \item{Consumer}{Factor with 103 levels, with numbers identifying unique consumers}
#'   \item{Frequency}{Ordered factor with 5 levels, answering the question: "How often do you eat carrots?". Levels include: "Once a week or more", "Once every two weeks", "Once every three weeks", "At least once month", and "Less than once a month".}
#'   \item{Sex}{Factor with 2 levels, giving the sex of each consumer (male or female).}
#'   \item{Age_group}{Ordered factor with 4 levels, giving the age category of each consumer. Levels include: "< 25 years", "26-40 years", "41-60 years", and "> 61 years".}
#'   \item{Employment_status}{Factor with 7 levels, giving the broad category of employment type for each consumer. Levels include: "Unskilled labourer" \emph{[original data: unskilled worker(no education)]}, "Skilled labourer" \emph{[original data: skilled worker(with education)]},  "Office worker", "Housewife/husband" \emph{[original data: housewife (or man)]}, "Self-employed" \emph{[original data: independent businessman/self-employment]}, "Student", and "Retired"}
#'   \item{Income_group}{Ordered factor with 4 levels, giving the broad income group of each consumer. Levels include: "low income" \emph{[original data: < 150000]}, "Low middle-income" \emph{[original data: 150000-300000]},  "High middle-income" \emph{[original data: 300000-500000]}, and "High-income" \emph{[original data: > 500000]}. Note that the selection of low-, (low/high) middle-, and high-income was done purely to stratify the consumers, and does not reflect whether the income bands provided in the original data are indeed low-, (low/high) middle-, or high-income strata in Denmark.}
#'   \item{Preference}{Integer value between 1 (low) and 7 (high), giving the rating each consumer gave to the carrots in terms of overall taste.}
#'   \item{Sweetness}{Integer value between 1 (low) and 7 (high), giving the rating each consumer gave to the carrots in terms of sweetness.}
#'   \item{Bitterness}{Integer value between 1 (low) and 7 (high), giving the rating each consumer gave to the carrots in terms of bitterness.}
#'   \item{Crispness}{Integer value between 1 (low) and 7 (high), giving the rating each consumer gave to the carrots in terms of crispness.}
#' }
#'
#' @source Per Bruun Brockhoff, The Royal Veterinary and Agricultural
#' University, Denmark; and \code{\link[lmerTest]{carrots}}.
"carrots"