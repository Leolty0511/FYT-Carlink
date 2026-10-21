.class public Lapp/App$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/App;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lapp/App;


# direct methods
.method public constructor <init>(Lapp/App;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/App$f;->a:Lapp/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, -0x5

    .line 1
    invoke-static {p1}, Ly0/h;->u0(I)V

    return-void
.end method
