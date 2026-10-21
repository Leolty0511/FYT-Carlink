.class Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriteSpec"
.end annotation


# instance fields
.field public callback:Landroid/print/IWriteResultCallback;

.field public fd:Landroid/os/ParcelFileDescriptor;

.field public pages:[Landroid/print/PageRange;

.field public sequence:I

.field public final synthetic this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method private constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V

    return-void
.end method
