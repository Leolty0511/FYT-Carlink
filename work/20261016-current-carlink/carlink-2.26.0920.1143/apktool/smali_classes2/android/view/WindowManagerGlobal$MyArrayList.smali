.class Landroid/view/WindowManagerGlobal$MyArrayList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowManagerGlobal;


# direct methods
.method public constructor <init>(Landroid/view/WindowManagerGlobal;)V
    .locals 0

    iput-object p1, p0, Landroid/view/WindowManagerGlobal$MyArrayList;->this$0:Landroid/view/WindowManagerGlobal;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method
