.class public Landroid/util/PrintWriterPrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final mPW:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/util/PrintWriterPrinter;->mPW:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/PrintWriterPrinter;->mPW:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
