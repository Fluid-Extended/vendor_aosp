# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)

# BICPR versioning
BICPR_VERSION := 0.69
BICPR_CODENAME := thepickrise

# Absolutely aosp
TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := BICPR-$(BICPR_VERSION)-$(BICPR_CODENAME)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)-$(CUSTOM_BUILD)
CUSTOM_VERSION_PROP := $(BICPR_VERSION)-$(BICPR_CODENAME)

CUSTOM_PROPERTIES := \
    com.bicpr.version=$(CUSTOM_VERSION_PROP) \
    com.bicpr.version.display=$(CUSTOM_VERSION) \
    com.bicpr.build_date=$(CUSTOM_BUILD_DATE) \
    com.bicpr.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    com.bicpr.build_type=$(CUSTOM_BUILD_TYPE)
