# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)

# Fluid versioning
FLUID_VERSION := 1.0
FLUID_CODENAME := bruhmoment

# Absolutely haram
TARGET_PRODUCT_SHORT := $(subst fluid_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := FluidExtended-$(FLUID_VERSION)-$(FLUID_CODENAME)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)-$(CUSTOM_BUILD)
CUSTOM_VERSION_PROP := $(FLUID_VERSION)-$(FLUID_CODENAME)

CUSTOM_PROPERTIES := \
    org.fluid.version=$(CUSTOM_VERSION_PROP) \
    org.fluid.version.display=$(CUSTOM_VERSION) \
    org.fluid.build_date=$(CUSTOM_BUILD_DATE) \
    org.fluid.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.fluid.build_type=$(CUSTOM_BUILD_TYPE)
