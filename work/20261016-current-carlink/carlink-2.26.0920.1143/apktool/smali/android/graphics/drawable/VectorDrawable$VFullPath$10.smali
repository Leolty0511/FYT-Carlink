.class final Landroid/graphics/drawable/VectorDrawable$VFullPath$10;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VFullPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/util/Property;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "strokeWidth"

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4000()Landroid/util/Property;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "strokeColor"

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4100()Landroid/util/Property;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "strokeAlpha"

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4200()Landroid/util/Property;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v0, "fillColor"

    .line 35
    .line 36
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4300()Landroid/util/Property;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v0, "fillAlpha"

    .line 44
    .line 45
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4400()Landroid/util/Property;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const-string/jumbo v0, "trimPathStart"

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4500()Landroid/util/Property;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const-string/jumbo v0, "trimPathEnd"

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4600()Landroid/util/Property;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const-string/jumbo v0, "trimPathOffset"

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4700()Landroid/util/Property;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    return-void
.end method
