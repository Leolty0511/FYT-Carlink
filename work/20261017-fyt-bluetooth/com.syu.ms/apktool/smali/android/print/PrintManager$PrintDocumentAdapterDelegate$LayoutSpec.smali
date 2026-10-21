.class Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutSpec"
.end annotation


# instance fields
.field public callback:Landroid/print/ILayoutResultCallback;

.field public metadata:Landroid/os/Bundle;

.field public newAttributes:Landroid/print/PrintAttributes;

.field public oldAttributes:Landroid/print/PrintAttributes;

.field public sequence:I

.field public final synthetic this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method private constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V

    return-void
.end method
