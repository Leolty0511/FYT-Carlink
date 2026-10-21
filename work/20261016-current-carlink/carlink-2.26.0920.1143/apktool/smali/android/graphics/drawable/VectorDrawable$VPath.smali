.class abstract Landroid/graphics/drawable/VectorDrawable$VPath;
.super Landroid/graphics/drawable/VectorDrawable$VObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VPath"
.end annotation


# static fields
.field private static final PATH_DATA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VPath;",
            "Landroid/util/PathParser$PathData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mChangingConfigurations:I

.field protected mPathData:Landroid/util/PathParser$PathData;

.field mPathName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VPath$1;

    const-class v1, Landroid/util/PathParser$PathData;

    const-string/jumbo v2, "pathData"

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VPath$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 5
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    .line 6
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    .line 7
    iget-object p1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/PathParser$PathData;

    invoke-direct {v0, p1}, Landroid/util/PathParser$PathData;-><init>(Landroid/util/PathParser$PathData;)V

    :goto_0
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    return-void
.end method


# virtual methods
.method public getPathData()Landroid/util/PathParser$PathData;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 2

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setPathData(Landroid/util/PathParser$PathData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/PathParser$PathData;->setPathData(Landroid/util/PathParser$PathData;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isTreeValid()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativePtr()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/util/PathParser$PathData;->getNativePtr()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->access$3600(JJ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
