.class public Lmodule/sound/C7604_NAVI_DIR$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7604_NAVI_DIR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C7604_NAVI_DIR;


# direct methods
.method public constructor <init>(Lmodule/sound/C7604_NAVI_DIR;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7604_NAVI_DIR$e;->a:Lmodule/sound/C7604_NAVI_DIR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 0

    add-int/2addr p1, p2

    sub-int/2addr p1, p3

    shl-int/lit8 p1, p1, 0x8

    return p1
.end method
