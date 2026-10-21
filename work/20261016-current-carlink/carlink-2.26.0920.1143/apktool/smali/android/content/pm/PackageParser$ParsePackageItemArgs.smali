.class Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsePackageItemArgs"
.end annotation


# instance fields
.field final bannerRes:I

.field final iconRes:I

.field final labelRes:I

.field final logoRes:I

.field final nameRes:I

.field final outError:[Ljava/lang/String;

.field final owner:Landroid/content/pm/PackageParser$Package;

.field final roundIconRes:I

.field sa:Landroid/content/res/TypedArray;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->owner:Landroid/content/pm/PackageParser$Package;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->nameRes:I

    .line 9
    .line 10
    iput p4, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->labelRes:I

    .line 11
    .line 12
    iput p5, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->iconRes:I

    .line 13
    .line 14
    iput p7, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->logoRes:I

    .line 15
    .line 16
    iput p8, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->bannerRes:I

    .line 17
    .line 18
    iput p6, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->roundIconRes:I

    .line 19
    .line 20
    return-void
.end method
