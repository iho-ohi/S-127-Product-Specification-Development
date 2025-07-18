The sample data for S-127 1.0.1 (November 2019) consists of a single GML dataset accompanied by exchange set catalogue and ISO 19115 metadata, structured as follows:

<this folder>			Where this README and the base folder of the dataset are located
  README.TXT			This file
  MTM_ROOT/			The base folder for the sample exchange set
    CATALOG.XML			The exchange set catalogue and metadata as specified in S-100 Part 4a
    127JS00EX_A0001/		Folder containing a dataset that is part of the exchange set
        127JS00EX_A0001.GML	Sample dataset in GML format
        MD_127JS00EX_A0001.XML	ISO 19115 metadata for the dataset
        support/			support files for the dataset

Depending on where you unpack the dataset and S-127 schemas, the schema location in the dataset and catalogues may need to be updated for the relevant schemas to be reachable. The arrangement used during development of the sample data was as follows:

<base>				Base folder
    <data folder>/			Folder for exchange sets
        MTM_ROOT/			Folder for sample exchange set. The structure of its contents is explained above.
    schemas/			Folder for schemas (XSD files). At the same level as the the <data folder>.
        S127/			Folder for S-127 schemas (XSDs)
            1.0.0/			Folder for S-127 V 1.0.0 XSDs
                FMT/			Folder for data format schemas (GML application schemas)
                    20190628/		Folder for 1.0.1 20190628 build of S-127 XSDs
                        S127.xsd		The GML application schema for S-127
	        common.xsd		common types (used by the S-127 XSD)
                        S127Basic.sch		Schematron files implementing basic Schematron checks for S-127 data
                XC/			Folder for S-127 customizations of S-100 exchange catalogue schemas
                  20190422/		Updated build of S-127 customizations
	    S127_XC.sch		Schematron file customizing the S-100 generic schemas.
                    S127_ExchangeCatalogue.xsd	Placeholder for S127 extensions of exchange catalogue. Contains
				no local types since there are no catalogue extensions in S-127 1.0.x
        S100/			Folder for S-100 schemas
            4.0.0/			Folder for S-100 4.0.0 schemas
                S100Catalog/		Folder for XSDs for the exchange set catalogue
                    20190422/		Folder for the 20190422build of the S-100 exchange set catalogue schemas
                S100GML/		Folder for XSDs for the S-100 GML profile
                    20180502/		Folder for XSDs for the referenced S-100 4.0.0 GML profile
                w3c/			Folder for W3C Xlinks XSD (used by other XSDs)
                resources/		A codelists starter file for machine-readable ISO-style codelists specific to S-100.
        standards.iso.org/		Folder for ISO schemas referenced by the exchange set catalogue. Contents not included in this distribution.
        ephemera/			Temporary solutions to gaps in the ISO distribution, e.g., validation for the ISO
				cit 2.0 and mdb 2.0 namespaces. 
        

References to older builds or other locations should have been updated to the current build and location, but if there are any residual references to older builds or other locations try updating them and inform me (Raphael Malyankar) about them.
Note that the sample dataset is not intended for implementation development or testing.
The ISO schemas in standards.iso.org may be downloaded from the S-100 GitHub site. They are needed only to validate the exchange set catalogue and any ISO 19115 metadata files which may be included in the distribution. See the README file at the GitHub site for more information.


