
configfile: "config.yaml"

rule computeMatrix:
    input:
        expand("bigwigs/{sample}.bw",sample=config["samples"])
    output:
        expand("matrices/{param}_matrix.gz",param=config["Name"])
    shell:
        "computeMatrix {config[matparams]} -S {input} -R {config[bedPath]} -o {output}"

rule heatmap:
    input:
        expand("matrices/{param}_matrix.gz",param=config["Name"])
    output:
        expand("heatmaps/{param}.png",param=config["Name"])
    shell:
        "plotHeatmap -m {input} {config[heatmap_params]} -out {output}"

