.class final Lcom/syu/carlink/carplay/VideoFrame$checkedHeader$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lz/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lz/a;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/syu/carlink/carplay/VideoFrame$checkedHeader$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/syu/carlink/carplay/VideoFrame$checkedHeader$2;

    invoke-direct {v0}, Lcom/syu/carlink/carplay/VideoFrame$checkedHeader$2;-><init>()V

    sput-object v0, Lcom/syu/carlink/carplay/VideoFrame$checkedHeader$2;->INSTANCE:Lcom/syu/carlink/carplay/VideoFrame$checkedHeader$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/syu/carlink/carplay/VideoFrame$checkedHeader$2;->invoke()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method
