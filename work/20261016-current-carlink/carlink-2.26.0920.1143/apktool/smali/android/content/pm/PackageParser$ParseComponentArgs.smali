.class public Landroid/content/pm/PackageParser$ParseComponentArgs;
.super Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseComponentArgs"
.end annotation


# instance fields
.field final descriptionRes:I

.field final enabledRes:I

.field flags:I

.field final processRes:I

.field final sepProcesses:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    .line 2
    .line 3
    .line 4
    iput-object p9, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    .line 5
    .line 6
    iput p10, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    .line 7
    .line 8
    iput p11, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    .line 9
    .line 10
    iput p12, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    .line 11
    .line 12
    return-void
.end method
