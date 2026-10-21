.class public Lmodule/sound/C7604_NAVI_DIR$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7604_NAVI_DIR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C7604_NAVI_DIR;


# direct methods
.method public constructor <init>(Lmodule/sound/C7604_NAVI_DIR;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7604_NAVI_DIR$k;->a:Lmodule/sound/C7604_NAVI_DIR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    mul-int/lit8 p1, p1, 0x10

    return p1
.end method

.method public b(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    mul-int/lit8 p1, p1, 0x10

    return p1
.end method
